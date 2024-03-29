import 'package:flutter/material.dart';
// import 'package:mcs/screens/home_screen.dart';
import 'package:mcs/widgets/product_gridview_container.dart';

class PeshawarZalmi extends StatefulWidget {
  const PeshawarZalmi({Key? key}) : super(key: key);

  @override
  State<PeshawarZalmi> createState() => _PeshawarZalmiState();
}

class _PeshawarZalmiState extends State<PeshawarZalmi> {
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
              imagePath: 'assets/images/pz_1.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 3500,
              discountedPrice: 2500),
          ProductContainer(
              imagePath: 'assets/images/pz_2.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/pz_3.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/pz_4.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
          ProductContainer(
              imagePath: 'assets/images/pz_5.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 3500,
              discountedPrice: 2500),
          ProductContainer(
              imagePath: 'assets/images/pz_6.jpg',
              productName: 'Kaptaan Chappal',
              productType: 'Chappal Type',
              normalPrice: 4000,
              discountedPrice: 3000),
        ],
      ),
    );
  }
}
