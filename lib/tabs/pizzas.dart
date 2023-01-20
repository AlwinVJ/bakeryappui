import 'package:donutapp/utilities/sales_tile.dart';
import 'package:flutter/material.dart';

class PizzasTab extends StatelessWidget {
  List pizzasOnSale = [
    ["Pepperoni", '36', Colors.yellow, 'images/pizza.png'],
    ["Onion&Cheese", '67', Colors.deepOrange, 'images/pizza1.png'],
    ["Beef&Onion", '78', Colors.deepPurple, 'images/pizza2.png'],
    ["Cheesy", '89', Colors.blue, 'images/pizza3.png'],
  ];

  PizzasTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.2),
      itemBuilder: (context, index) {
        return SalesTiles(
          itemFlavor: pizzasOnSale[index][0],
          itemPrize: pizzasOnSale[index][1],
          itemColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
    );
  }
}
