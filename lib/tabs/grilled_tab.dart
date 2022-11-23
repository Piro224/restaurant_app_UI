// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant_app/util/grilled_tile.dart';

class GrilledView extends StatelessWidget {
  List<dynamic> grilledChicken = [
    //chickenDish, price, color, imgname
    [
      "Grilled with Veges",
      "60",
      Colors.blue,
      "assets/img/grilled-chicken-legs-flaming-grill-with-grilled-vegetables-with-tomatoes-potatoes-pepper-seeds-salt.webp"
    ],
    [
      "Grilled Wings",
      "55",
      Colors.red,
      "assets/img/grilled-chicken-wings-flaming-grill.webp"
    ],
    [
      "Grilled Wings",
      "70",
      Colors.pink,
      "assets/img/grilled-chicken-wings.webp"
    ],
    [
      "Baked with Spices",
      "65",
      Colors.green,
      "assets/img/baked-chicken-drumsticks.webp"
    ],
    [
      "Grilled with Potatoes",
      "60",
      Colors.deepOrange,
      "assets/img/grilled-chicken-with-fried-potatoes.webp"
    ],
    ["Grilled chicken", "70", Colors.purple, "assets/img/grilled-chicken.jpg"],
  ];

  GrilledView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: grilledChicken.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.7),
      itemBuilder: (context, index) {
        return GrilledTile(
          grilledDish: grilledChicken[index][0],
          grilledPrice: grilledChicken[index][1],
          grilledColor: grilledChicken[index][2],
          grilledImage: grilledChicken[index][3],
        );
      },
    );
  }
}
