import 'package:flutter/material.dart';

class BNavigationBarWidget extends StatefulWidget {
  const BNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.changeIndex,
  });

  final int currentIndex;
  final void Function(int newIndex) changeIndex;

  @override
  State<BNavigationBarWidget> createState() => _BNavigationBarWidgetState();
}

class _BNavigationBarWidgetState extends State<BNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      currentIndex: widget.currentIndex,
      onTap: widget.changeIndex,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      iconSize: 25,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Menu'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.format_size_sharp,
            ),
            label: 'SizeGuide'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'User'),
      ],
    );
  }
}
