// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SalesTiles extends StatelessWidget {
  final String itemFlavor;
  final String itemPrize;
  final itemColor;
  final String imageName;
  const SalesTiles(
      {super.key,
      required this.itemFlavor,
      required this.itemPrize,
      required this.itemColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: itemColor[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: itemColor[100],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '₹$itemPrize',
                    style: TextStyle(
                        color: itemColor[800],
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
                itemFlavor,
                style: TextStyle(
                    color: itemColor[600],
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
