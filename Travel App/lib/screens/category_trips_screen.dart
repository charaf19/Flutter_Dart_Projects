import 'package:flutter/material.dart';

class TripsScreens extends StatelessWidget {
  static const screenRoute = '/category-trips';

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categoryTitle!)),
      ),
      body: Center(child: const Text("قائمة برحلات هذا التصنيف")),
    );
  }
}
