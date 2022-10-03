import 'package:flutter/material.dart';
import './Screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  String title;
  Color color;

  CategoryItem({required this.title, required this.color});

  void openDetailsScreen(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMeals();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openDetailsScreen(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
