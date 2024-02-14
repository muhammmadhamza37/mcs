
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mcs/screens/home_screen.dart';
import 'package:mcs/widgets/gridview_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


   @override
  void initState() {
    // TODO: implement initState
    super.initState();

   Timer(Duration(seconds: 2), (){
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
   });
  }


  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height *1;
    final width  = MediaQuery.sizeOf(context).width  *1;
    return  Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/images/splashchapli.jpg',
             fit: BoxFit.cover,
               height:  height *.6,
             ),
            SizedBox(height: height * 0.04,),
            SpinKitWave(color: Colors.blue,size: 40,),
          ],
        ),
      ),
    );
  }
}
