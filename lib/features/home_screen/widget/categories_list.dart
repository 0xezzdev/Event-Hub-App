import 'package:event_hub_app/features/home_screen/model/categories_model.dart';
import 'package:event_hub_app/features/home_screen/widget/categories_card.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 162),
      height: 39,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 1),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoriesCard(
          txt: CategoriesModel().categories[index]['txt'],
          iconData: CategoriesModel().categories[index]['iconData'],
          color: CategoriesModel().categories[index]['color'],
        ),
        itemCount: CategoriesModel().categories.length,
      ),
    );
  }
}
