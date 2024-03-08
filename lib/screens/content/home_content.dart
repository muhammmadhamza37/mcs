import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcs/screens/peshawar_zalmi_screen.dart';
import 'package:mcs/widgets/price_sale_container.dart';
import 'package:mcs/widgets/product_display_container.dart';
import '../../widgets/carousal_container.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;


    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: const [
              // images for carousel
              CarouselContainer(imageName: 'pz_6.jpg'),
              CarouselContainer(imageName: 'pz_16.jpg'),
              CarouselContainer(imageName: 'pz_11.jpg'),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 310.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          PriceSaleContainer(
            saleTitle: 'Eid Super Sale',
            description:
            'Eid Sale upto 30% off, If you buy through Application',
            width: width,
          ),
          SizedBox(
            height: height * 0.02,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ProductDisplayContainer(
                  imagePath: 'assets/images/3.jpg', imageTitle: 'KAPTAAN'),

              // SizedBox(
              //   width: width * 0.1,
              // ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PeshawarZalmi()));
                },
                child: const ProductDisplayContainer(
                    imagePath: 'assets/images/pz_15.jpg',
                    imageTitle: 'Peshawar Zalmi'),
              ),

              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProductDisplayContainer(
                imagePath: 'assets/images/3.jpg',
                imageTitle: 'Single Border',
              ),

              // SizedBox(
              //   width: width * 0.1,
              // ),
              ProductDisplayContainer(
                  imagePath: 'assets/images/1.jpg',
                  imageTitle: 'Double Border'),

              // SizedBox(
              //   height: height * 0.02,
              // ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          PriceSaleContainer(
            saleTitle: 'Eid Super Sale',
            description:
            'Eid Sale upto 30% off, If you buy through Application',
            width: width,
          ),
        ],
      ),
    );
  }
}
