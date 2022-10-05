import 'package:flutter/material.dart';

class TripsScreens extends StatelessWidget {
  const TripsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة الرحلات '),
      ),
      body: Center(child: const Text("قائمة برحلات هذا التصنيف")),
    );
  }
}
