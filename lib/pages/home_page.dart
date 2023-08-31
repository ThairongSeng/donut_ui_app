import 'package:donut_app_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothies_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //my tabs
  List<Widget> myTabs = const [
    //donut tab
    MyTab(
      iconPath: 'lib/icons/Adonut.png',
    ),
    //burger tab
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    //smoothie tab
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    //pancake tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    //pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
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
          leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
              )),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[800],
                    size: 36,
                  ),
                ))
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24, color: Colors.teal),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 24,
            ),
            //tab bar
            TabBar(tabs: myTabs),

            //tab bar view
            Expanded(
              child: TabBarView(children: [
                //donut page
                DonutTab(),
                //burger page
                BurgerTab(),
                //smoothie page
                SmoothieTab(),
                //pancake page
                PancakeTab(),
                //pizza page
                PizzaTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
