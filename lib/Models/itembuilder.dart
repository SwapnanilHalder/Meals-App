import 'package:flutter/material.dart';

class ItemBuilder {
  final String id;
  final String title;
  final Color color;

  const ItemBuilder({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
