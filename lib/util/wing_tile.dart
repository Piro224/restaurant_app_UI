import 'package:flutter/material.dart';

class CrispyTile extends StatelessWidget {
  final String crispyDish;
  final String crispyPrice;
  final crispyColor;
  final String crispyimage;

  const CrispyTile(
      {super.key,
      required this.crispyDish,
      required this.crispyPrice,
      this.crispyColor,
      required this.crispyimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: crispyColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      color: crispyColor[100]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\$$crispyPrice",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),

            //image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: SizedBox(
                
                child: Image.asset(
                  crispyimage,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            //chickenDish
            Center(
                child: Text(
              crispyDish,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )),
            const SizedBox(
              height: 3,
            ),

            Text(
              "Chicken~Bureau",
              style: TextStyle(fontSize: 10, color: Colors.grey[600]),
            ),

            const SizedBox(height: 5),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //favourite icon
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],

                //+ add icon
              ),
            ),
          ],
        ),
      ),
    );
  }
}

