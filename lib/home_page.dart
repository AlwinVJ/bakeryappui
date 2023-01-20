import 'package:donutapp/tabs/burgers.dart';
import 'package:donutapp/tabs/donuts.dart';
import 'package:donutapp/tabs/pancakes.dart';
import 'package:donutapp/tabs/pizzas.dart';
import 'package:donutapp/tabs/smoothies.dart';
import 'package:donutapp/utilities/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTab = [
    const MyTab(iconPath: 'icons/donut.png'),
    const MyTab(iconPath: 'icons/burger.png'),
    const MyTab(iconPath: 'icons/pancakes.png'),
    const MyTab(iconPath: 'icons/pizza.png'),
    const MyTab(iconPath: 'icons/smoothie.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
                size: 36,
              ),
              onPressed: () {
                //Create a functionality like drawer while the iconbutton is pressed
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade800,
                  size: 36,
                ),
                onPressed: () {
                  //A funtion must be defined
                },
              ),
            ),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('I want to ',style: TextStyle(fontSize: 24),),
                Text('EAT',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)
              ],
            ),),
            const SizedBox(height: 24,),
            TabBar(tabs: myTab),
            Expanded(
              child: TabBarView(children: [
                DonutsTab(),
                BurgersTab(),
                PancakesTab(),
                PizzasTab(),
                SmoothiesTab()
              ]),
            )
        ],),
      ),
    );
  }
}
