import 'package:flutter/material.dart';

import 'package:alimentos_nav/models/category.dart';
import 'package:alimentos_nav/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;

  const CategoryItem(this._category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: _category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                _category.color.withOpacity(0.7),
                _category.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
      ),
    );
  }
}
