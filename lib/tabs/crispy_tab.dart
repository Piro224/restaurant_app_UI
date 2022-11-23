// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant_app/util/crispy_tile.dart';

class CrispyView extends StatelessWidget {
  List<dynamic> crispyChicken = [
    //chickenDish, price, color, imgname
    [
      "Fried with Fries",
      "40",
      Colors.blue,
      "assets/img/crispy-fried-chicken.webp"
    ],
    [
      "Spiced with Fries",
      "40",
      Colors.red,
      "assets/img/bbq-chicken-wings-beer-snack.webp"
    ],
    [
      "Baked Drumsticks",
      "45",
      Colors.pink,
      "assets/img/baked-chicken-drumsticks-honey-mustard-marinade.webp"
    ],
    [
      "Baked with Spices",
      "60",
      Colors.green,
      "assets/img/crispy-fried-chicken-plate-with-tomato-sauce.webp"
    ],
    [
      "Baked with Tabaka",
      "55",
      Colors.deepOrange,
      "assets/img/baked-chicken-tabaka-with-spices.webp"
    ],
    [
      "Baked Quails",
      "70",
      Colors.purple,
      "assets/img/baked-quails-pan-dark-surface.webp"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: crispyChicken.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.7),
      itemBuilder: (context, index) {
        return CrispyTile(
          crispyDish: crispyChicken[index][0],
          crispyPrice: crispyChicken[index][1],
          crispyColor: crispyChicken[index][2],
          crispyimage: crispyChicken[index][3],
        );
      },
    );
  }
}
