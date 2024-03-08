import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productType,
    required this.normalPrice,
    required this.discountedPrice,
  });

  final String imagePath;
  final String productName;
  final String productType;
  final int normalPrice;
  final int discountedPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black45,
        ),
        // boxShadow: [
        //     BoxShadow(
        //       color: Colors.grey.withOpacity(0.5),
        //       spreadRadius: 2,
        //       blurRadius: 1,
        //       offset: const Offset(1.0, 1.0),
        //     ),
        //   ],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 150,
            child: Image.asset(
              imagePath,
              // fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 20,
                bottom: 10,
              ),
              color: Colors.black12,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      productType,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Rs. $normalPrice',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Rs. $discountedPrice',
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          const Divider(
            height: 0,
            thickness: 1,
            color: Colors.black54,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black12,
                // border: Border(
                //     top: BorderSide(
                //   width: 1,
                // )),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'QUICK BUY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
