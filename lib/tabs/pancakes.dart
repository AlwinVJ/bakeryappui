import 'package:donutapp/utilities/sales_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  List pancakesOnSale = [
    ["Strawberry", '36', Colors.red, 'images/pancake.png'],
    ["DarkChoco", '67', Colors.blue, 'images/pancakes.png'],
    ["Chocolate", '78', Colors.deepOrange, 'images/donut2.png'],
    ["Strawberry", '89', Colors.deepPurple, 'images/donut3.png'],
  ];

  PancakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.2),
      itemBuilder: (context, index) {
        return SalesTiles(
          itemFlavor: pancakesOnSale[index][0],
          itemPrize: pancakesOnSale[index][1],
          itemColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
    );
  }
}
