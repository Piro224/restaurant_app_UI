// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant_app/tabs/crispy_tab.dart';
import 'package:restaurant_app/tabs/fried_tab.dart';
import 'package:restaurant_app/tabs/grilled_tab.dart';
import 'package:restaurant_app/tabs/spicy_tab.dart';
import 'package:restaurant_app/tabs/wings_tab.dart';
import 'package:restaurant_app/util/mytab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //my tabs list
  List<Widget> myTabs = const [
    // Fried chiken tab
    MyTab(
      iconPath: 'assets/icons/fried-chicken.png',
    ),
    //Grilled chicken tab
    MyTab(
      iconPath: 'assets/icons/fried-chicken (2).png',
    ),

    //Crispy chicken tab
    MyTab(
      iconPath: 'assets/icons/fried-chicken (3).png',
    ),

    //Spicy Chicken tab
    MyTab(
      iconPath: 'assets/icons/chicken-leg.png',
    ),

    //Chicken wings tab
    MyTab(
      iconPath: 'assets/icons/chicken-wings.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // centerTitle: true,
          // title: Text(
          //   'Chicken BUREAU',
          //   style: TextStyle(
          //       color: Colors.blueGrey, fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.black, size: 36),
              onPressed: () {
                //open a drawer or an action
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.black, size: 36),
                onPressed: () {
                  //do an action
                },
              ),
            ),
          ],
        ),
        body: Column(
          // first some text == i want to eat
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 15),
              child: Row(
                children: [
                  Text("I want to eat ", style: TextStyle(fontSize: 20)),
                  Text(
                    "Chicken",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // second Tab bar
            TabBar(
               tabs: myTabs),

            // Tab bar view
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  //Fried view
                  FriedView(),
                  //Grilled view
                  GrilledView(),
                  //Crispy view
                  CrispyView(),
                  //Spicy view
                  SpicyView(),
                  //Wings view
                  WingsView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
