
import 'package:flutter/material.dart';
class GridViewButton extends StatefulWidget {
  const GridViewButton({Key? key}) : super(key: key);

  @override
  State<GridViewButton> createState() => _GridViewButtonState();
}

class _GridViewButtonState extends State<GridViewButton> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GridView Button'),
      ),
      body:  Center(
        child: Container(
          width: 150,
          height: 150,
          color: Colors.black12,
        ),
      ),
    );

  }
}
