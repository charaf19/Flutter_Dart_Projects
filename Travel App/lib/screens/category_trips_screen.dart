import 'package:travel_app/app_data.dart';
import 'package:flutter/material.dart';

class TripsScreens extends StatelessWidget {
  static const screenRoute = '/category-trips';

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filtredTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categoryTitle!)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(filtredTrips[index].title);
        },
        itemCount: filtredTrips.length,
      ),
    );
  }
}
