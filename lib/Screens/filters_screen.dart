import 'package:flutter/material.dart';
import '../Widget/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Text("This is the Screen Page"),
      ),
    );
  }
}
