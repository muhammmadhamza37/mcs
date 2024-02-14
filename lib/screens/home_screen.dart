
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mcs/screens/menu_screen.dart';
import 'package:mcs/screens/size_guide_screen.dart';
import 'package:mcs/screens/user_account.dart';


class HomeScreen extends StatefulWidget {


  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.sizeOf(context).height *  1;
    final width  = MediaQuery.sizeOf(context).width *  1;

    return  Scaffold(


      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image:
                      AssetImage("assets/images/1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 310.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration:
                const Duration(milliseconds: 500),
                viewportFraction: 0.8,
              ),
            ),

            SizedBox(height: height *0.02,),
            Container(
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(12),
              ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(left: 12),
                    child: Text('GET 10%OFF',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width: width * 0.05,),
                  const Expanded(child: Text('CALLING ALL STUDENTS,NHS & EMERGENCY SERVICE WORKERS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),

                ],
              ),
            ),

            SizedBox(height: height *0.02,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: const Offset(1.0, 1.0),
                          ),
                        ],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/3.jpg"),
                            fit: BoxFit.cover)),
                    height: 139,
                    width: 139,
                    child: const Text(
                      'KAPTAAN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width *0.1,),

                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                      borderRadius:const BorderRadius.all(Radius.circular(15)),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover)),
                  height: 139,
                  width: 139,
                  child: const Text(
                    'Peshawar Zalmi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: height *0.02,),
              ],
            ),
            SizedBox(height: height *0.02,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: const Offset(1.0, 1.0),
                          ),
                        ],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(15)),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/3.jpg"),
                            fit: BoxFit.cover)),
                    height: 139,
                    width: 139,
                    child: const Text(
                      'Single Border',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width *0.1,),

                Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: const Offset(1.0, 1.0),
                        ),
                      ],
                      borderRadius:const BorderRadius.all(Radius.circular(15)),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover)),
                  height: 139,
                  width: 139,
                  child: const Text(
                    'Double Border',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],),
            SizedBox(height: height *0.02,),

            Container(
              width: 320,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(12),
              ),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding:  EdgeInsets.only(left: 12),
                    child: Text('GET 10%OFF',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width: width * 0.05,),
                  const Expanded(child: Text('CALLING ALL STUDENTS,NHS & EMERGENCY SERVICE WORKERS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),

                ],
              ),
            ),


          ],),
        ),
      // _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
        onTap: (value){
           setState(() {
             _selectedIndex =value;
           });
        },
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        items:   const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu,color: Colors.white,),label: 'Menu'),

          BottomNavigationBarItem(
              icon: Icon(Icons.format_size_sharp,color: Colors.white,),label: 'SizeGuide'),

          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.white,),label: 'User'),
        ],




      ),
      );
  }
}
