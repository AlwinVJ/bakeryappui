import 'package:donutapp/utilities/sales_tile.dart';
import 'package:flutter/material.dart';

class SmoothiesTab extends StatelessWidget {
  List smoothiesOnSale = [
    ["Ice Cream", '36', Colors.blue, 'images/donut.png'],
    ["DarkChoco", '67', Colors.deepOrange, 'images/donut1.png'],
    ["Chocolate", '78', Colors.red, 'images/donut2.png'],
    ["Strawberry", '89', Colors.yellow, 'images/donut3.png'],
  ];

  SmoothiesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.2),
      itemBuilder: (context, index) {
        return SalesTiles(
          itemFlavor: smoothiesOnSale[index][0],
          itemPrize: smoothiesOnSale[index][1],
          itemColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
    );
  }
}
