import 'package:flutter/material.dart';

import 'package:alimentos_nav/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _category = ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: Center(
        child: Text('Receitas por categoria'),
      ),
    );
  }
}
