import 'package:flutter/material.dart';

class PriceSaleContainer extends StatelessWidget {
  const PriceSaleContainer({
    super.key,
    required this.saleTitle,
    required this.description,
    required this.width,
  });

  final String saleTitle;
  final String description;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 120,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4.0,
      ),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              saleTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
