import 'package:flutter/material.dart';

class MealDeatailsScreen extends StatelessWidget {
  const MealDeatailsScreen({super.key});

  static const routeName = '/meal_details_screen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('$mealId')),
      body: Text("details - $mealId!"),
    );
  }
}
