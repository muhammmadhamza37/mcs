import 'package:flutter/material.dart';
import 'package:mcs/screens/splash_screen.dart';
import 'package:mcs/widgets/gridview_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(centerTitle: true,color: Colors.black,titleTextStyle: TextStyle(color: Colors.white,fontSize: 17)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


