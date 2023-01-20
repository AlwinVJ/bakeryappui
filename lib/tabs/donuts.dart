import 'package:donutapp/utilities/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutsTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", '36', Colors.blue, 'images/donut.png'],
    ["DarkChoco", '67', Colors.red, 'images/donut1.png'],
    ["Chocolate", '78', Colors.deepOrange, 'images/donut2.png'],
    ["Strawberry", '89', Colors.yellow, 'images/donut3.png'],
  ];

  DonutsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.2),
      itemBuilder: (context, index) {
        return DonutTiles(
          donutFlavor: donutsOnSale[index][0],
          donutPrize: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
