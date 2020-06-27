import 'package:alimentos_nav/components/meal_item.dart';
import 'package:alimentos_nav/models/meal.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição selecionada como favorita.'),
      );
    }

    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (ctx, index) {
        return MealItem(favoriteMeals[index]);
      },
    );
  }
}
