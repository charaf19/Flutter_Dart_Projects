import 'package:flutter/material.dart';

class TripsScreens extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  TripsScreens(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categoryTitle)),
      ),
      body: Center(child: const Text("قائمة برحلات هذا التصنيف")),
    );
  }
}
