import 'package:flutter/widgets.dart';
import 'package:meals/components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> _favoriteMeals;
  const FavoriteScreen(this._favoriteMeals, {super.key});
  @override
  Widget build(BuildContext context) {
    return _favoriteMeals.isEmpty
        ? const Center(
            child: Text('Nenhuma refeição foi marcada como favorita'),
          )
        : ListView.builder(
            itemCount: _favoriteMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(_favoriteMeals[index]);
            });
  }
}
