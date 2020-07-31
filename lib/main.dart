import 'package:flutter/material.dart';
import 'package:meals_app/Screens/category_meals_screen.dart';
import 'package:meals_app/Screens/meal_details_screen.dart';
import 'package:meals_app/Screens/tabs_screen.dart';

import './Screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Deli Meals",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        '/': (_) => TabsScreen(),
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (_) => MealDetailsScreen(),
      },
      onGenerateRoute: (settings) {
        print(
            "You have accessed onGenerate route. This is only used for pages that are not tracked by home and routes. It is mostly used for some known bugs in your application.");
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
      onUnknownRoute: (settings) {
        print("You have reached an unknown Page");
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              appBar: AppBar(title: Text("404 error")),
              body: Center(child: Text("You have reached an unknown page")),
            );
          },
        );
      },
    );
  }
}
