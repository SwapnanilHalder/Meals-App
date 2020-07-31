import 'package:flutter/material.dart';
import '../Widget/list_meals.dart';

import '../Models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen({
  //   @required this.categoryId,
  //   @required this.categoryTitle,
  // });
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeArgs =
        ModalRoute.of(context).settings.arguments;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((element) => (element.categories.contains(categoryId)))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle : ID: $categoryId'),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (BuildContext context, int index) {
          var item = categoryMeals[index];
          return ListMeals(
            id: item.id,
            title: item.title,
            imageUrl: item.imageUrl,
            duration: item.duration,
            affordability: item.affordability,
            complexity: item.complexity,
          );
        },
      ),
    );
  }
}
