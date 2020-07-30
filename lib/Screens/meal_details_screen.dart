import 'package:flutter/material.dart';

import '../Models/dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/category-meals/meal-details';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final selectedItem =
        DUMMY_MEALS.where((mealItem) => (mealItem.id == id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedItem[0].title),
      ),
      body: Card(
        child: Text("Helloooo: ID : $id"),
      ),
    );
  }
}
