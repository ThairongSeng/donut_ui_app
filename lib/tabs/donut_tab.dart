import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ['Ice Cream', '36', Colors.blue, 'lib/images/donut.png'],
    ['Strawberry', '45', Colors.red, 'lib/images/donut1.png'],
    ['Grape Ape', '84', Colors.purple, 'lib/images/donut2.png'],
    ['Choco', '95', Colors.green, 'lib/images/donut3.png'],
  ];

  DonutTab({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  }
}
