import 'package:donutapp/utilities/sales_tile.dart';
import 'package:flutter/material.dart';

class BurgersTab extends StatelessWidget {
  List burgerOnSale = [
    ["CheeseBurger", '136', Colors.deepOrange, 'images/cheeseburger.png'],
    ["Hamburger", '167', Colors.deepPurple, 'images/hamburger.png'],
    ["VegBurger", '178', Colors.yellow, 'images/burger1.png'],
    ["ChickenBurger", '189', Colors.blue, 'images/burger.png'],
  ];

  BurgersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.2),
      itemBuilder: (context, index) {
        return SalesTiles(
          itemFlavor: burgerOnSale[index][0],
          itemPrize: burgerOnSale[index][1],
          itemColor: burgerOnSale[index][2],
          imageName: burgerOnSale[index][3],
        );
      },
    );
  }
}
