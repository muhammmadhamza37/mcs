import 'package:flutter/material.dart';
import 'package:mcs/screens/content/home_content.dart';
import 'package:mcs/screens/content/menu_content.dart';
import 'package:mcs/screens/content/size_guide_content.dart';

const List<Widget> screensContent = [
  HomeContent(),
  MenuContent(),
  SizeGuideContent(),
  // was giving some instance member init. error
  // UserAccountContent(backToIndex: getIndex),
];

final List<String> screensLabel = [
  'Home',
  'Menu',
  'SizeGuide',
  'User Account',
];
