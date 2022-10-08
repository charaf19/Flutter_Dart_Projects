import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/screens/category_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold,
                ),
                headline6: const TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: "ElMessiri",
                  fontWeight: FontWeight.bold,
                ),
              ),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: Colors.amber)),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
      ],
      routes: {
        '/': (context) => CategoriesScreen(),
        '/category-trips': (context) => TripsScreens(),
      },
    );
  }
}
