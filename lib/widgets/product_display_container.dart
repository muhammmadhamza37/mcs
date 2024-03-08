import 'package:flutter/material.dart';

class ProductDisplayContainer extends StatelessWidget {
  const ProductDisplayContainer({
    super.key,
    required this.imagePath,
    required this.imageTitle,
    this.height = 139,
    this.width = 139,
  });

  final String imagePath;
  final String imageTitle;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image:
          DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      height: 139,
      width: 139,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: Text(
            imageTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
