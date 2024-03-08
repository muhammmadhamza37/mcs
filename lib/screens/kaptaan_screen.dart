// import 'package:flutter/material.dart';
// import 'package:mcs/screens/home_content.dart';
// import 'package:mcs/widgets/product_container.dart';
//
// class KaptaanScreen extends StatefulWidget {
//   const KaptaanScreen({Key? key}) : super(key: key);
//
//   @override
//   State<KaptaanScreen> createState() => _KaptaanScreenState();
// }
//
// class _KaptaanScreenState extends State<KaptaanScreen> {
//   int _selectedIndex = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shop Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//           childAspectRatio: 0.56,
//           crossAxisCount: 2,
//           mainAxisSpacing: 4,
//           crossAxisSpacing: 4,
//           children: const [
//             ProductContainer(
//                 imagePath: 'assets/images/4.jpg',
//                 productName: 'Kaptaan Chappal',
//                 productType: 'Chappal Type',
//                 normalPrice: 3500,
//                 discountedPrice: 2500),
//             ProductContainer(
//                 imagePath: 'assets/images/kaptaan.jpg',
//                 productName: 'Kaptaan Chappal',
//                 productType: 'Chappal Type',
//                 normalPrice: 4000,
//                 discountedPrice: 3000),
//             ProductContainer(
//                 imagePath: 'assets/images/kaptaan.jpg',
//                 productName: 'Kaptaan Chappal',
//                 productType: 'Chappal Type',
//                 normalPrice: 4000,
//                 discountedPrice: 3000),
//             ProductContainer(
//                 imagePath: 'assets/images/kaptaan.jpg',
//                 productName: 'Kaptaan Chappal',
//                 productType: 'Chappal Type',
//                 normalPrice: 4000,
//                 discountedPrice: 3000),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         currentIndex: _selectedIndex,
//         onTap: (value) {
//           setState(() {
//             _selectedIndex = value;
//           });
//
//           if (_selectedIndex == 0) {
//             Navigator.of(context)
//                 .pushReplacement(MaterialPageRoute(builder: ((context) {
//               return const HomeContent();
//             })));
//           }
//         },
//         backgroundColor: Colors.black,
//         type: BottomNavigationBarType.fixed,
//         iconSize: 25,
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 // color: Colors.white,
//               ),
//               label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.menu,
//                 // color: Colors.white,
//               ),
//               label: 'Menu'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.format_size_sharp,
//                 // color: Colors.white,
//               ),
//               label: 'SizeGuide'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person,
//                 // color: Colors.white,
//               ),
//               label: 'User'),
//         ],
//       ),
//     );
//   }
// }
