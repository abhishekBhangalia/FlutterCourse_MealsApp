import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../category_item.dart';

class Categories extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meals')),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORY.map((e) => CategoryItem(title: e.title, color: e.color)).toList(),
      ),
    );
  }
}
