import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('$categoryTitle : ID: $categoryId'),
      ),
      body: Center(
        child: Text("This is the meals page of $categoryTitle"),
      ),
    );
  }
}
