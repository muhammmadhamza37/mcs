import 'package:flutter/material.dart';

class SizeGuideContent extends StatefulWidget {
  const SizeGuideContent({Key? key}) : super(key: key);

  @override
  State<SizeGuideContent> createState() => _SizeGuideContentState();
}

class _SizeGuideContentState extends State<SizeGuideContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          width: 20,
          color: Colors.red,
        ),
      ],
    );
  }
}
