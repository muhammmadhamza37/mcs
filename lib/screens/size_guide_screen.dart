
import 'package:flutter/material.dart';
class SizeGuideScreen extends StatefulWidget {
  const SizeGuideScreen({Key? key}) : super(key: key);

  @override
  State<SizeGuideScreen> createState() => _SizeGuideScreenState();
}

class _SizeGuideScreenState extends State<SizeGuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 20,
            width: 20,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
