import 'package:flutter/material.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({
    super.key,
    required this.imageName,
  });

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage('assets/images/$imageName'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
