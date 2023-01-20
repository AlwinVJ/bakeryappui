// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DonutTiles extends StatelessWidget {
  final String donutFlavor;
  final String donutPrize;
  final donutColor;
  final String imageName;
  const DonutTiles(
      {super.key,
      required this.donutFlavor,
      required this.donutPrize,
      required this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '₹$donutPrize',
                    style: TextStyle(
                        color: donutColor[800],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: Image.asset(imageName),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:16.0),
              child: Text(
                donutFlavor,
                style: TextStyle(
                    color: donutColor[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[800],
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
