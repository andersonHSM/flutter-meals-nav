import 'package:alimentos_nav/components/meal_item.dart';
import 'package:flutter/material.dart';

import 'package:alimentos_nav/models/category.dart';
import 'package:alimentos_nav/data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _category = ModalRoute.of(context).settings.arguments as Category;

    final _categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(_category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _categoryMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(_categoryMeals[index]);
          },
        ),
      ),
    );
  }
}
