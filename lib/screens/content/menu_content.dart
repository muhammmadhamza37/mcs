import 'package:flutter/material.dart';
import 'package:mcs/widgets/product_gridview_container.dart';

class MenuContent extends StatefulWidget {
  const MenuContent({Key? key}) : super(key: key);

  @override
  State<MenuContent> createState() => _MenuContentState();
}

class _MenuContentState extends State<MenuContent> {
  // int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // appBar: AppBar(
    //   title: const Text('Shop Screen'),
    // ),
    // body: Padding(
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        childAspectRatio: 0.5,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: const [
          ProductContainer(
              imagePath: 'assets/images/4.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 3500,
              discountedPrice: 2500),
          ProductContainer(
              imagePath: 'assets/images/kaptaan.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/kaptaan.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/kaptaan.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/4.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 3500,
              discountedPrice: 2500),
          ProductContainer(
              imagePath: 'assets/images/kaptaan.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
        ],
      ),
    );
  }
}
