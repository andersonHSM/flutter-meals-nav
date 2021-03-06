import 'package:flutter/material.dart';

import 'package:alimentos_nav/components/category_item.dart';
import 'package:alimentos_nav/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map(
        (cat) {
          return CategoryItem(cat);
        },
      ).toList(),
    );
  }
}
