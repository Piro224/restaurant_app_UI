// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant_app/util/fried_tile.dart';

class FriedView  extends StatelessWidget {
List <dynamic>friedChicken = [
    //chickenDish, price, color, imgname
    ["Fried with Fries", "40", Colors.blue, "assets/img/fried-chicken-with-fries.webp"],
    ["Hamburger", "40", Colors.red, "assets/img/big-sandwich-hamburger-with-juicy-beef-burger-cheese-tomato-red-onion.webp"],
    ["Baked Drumsticks", "45", Colors.pink, "assets/img/baked-chicken-drumsticks-honey-mustard-marinade.webp"],
    ["Half-grilled", "60", Colors.green, "assets/img/half-grilled-chicken-plate.webp"],
    ["Baked Chicken", "55", Colors.deepOrange, "assets/img/white-appetizer-lunch-meal-baked.webp"],
    ["Chicken Burger", "70", Colors.purple, "assets/img/tasty-healthy-burgers-with-chicken-breast.webp"],
  ];

  FriedView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: friedChicken.length,
      padding: EdgeInsets.all(12),
      gridDelegate: 
    SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/1.7), 
    itemBuilder: (context, index) {
      return FriedTile(
        friedDish:  friedChicken[index][0],
        friedPrice: friedChicken[index][1],
        friedColor: friedChicken[index][2],
        friedImage: friedChicken[index][3],

      );
    },
    );
  }
}