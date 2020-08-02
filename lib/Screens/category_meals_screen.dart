import 'package:flutter/material.dart';
import '../Models/meal_builder.dart';
import '../Widget/list_meals.dart';

import '../Models/dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  bool updateList = false;
  List<MealBuilder> categoryMeals;
  String categoryId;

  String categoryTitle;
  void didChangeDependencies() {
    if (!updateList) {
      final Map<String, Object> routeArgs =
          ModalRoute.of(context).settings.arguments;
      categoryId = routeArgs['id'];
      categoryTitle = routeArgs['title'];
      categoryMeals = DUMMY_MEALS
          .where((element) => (element.categories.contains(categoryId)))
          .toList();
      updateList = true;
    }
    super.didChangeDependencies();
  }

  void _removeItem(String id) {
    setState(() {
      categoryMeals.removeWhere((element) => (element.id == id));
    });
  }

  @override
  Widget build(BuildContext context) {
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
            removeItem: _removeItem,
          );
        },
      ),
    );
  }
}
