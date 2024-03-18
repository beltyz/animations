import 'package:animations_project/animations/animated_container.dart';
import 'package:animations_project/animations/interactive_cards.dart';
import 'package:animations_project/animations/liquid_swipe.dart';
import 'package:animations_project/animations/paralax_scrolling_landingpage.dart';
import 'package:animations_project/animations/paralax_scrolling_videocard.dart';
import 'package:animations_project/animations/test.dart';
import 'package:animations_project/blur/glassMorphism.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: paralax_scrolling());
  }
}
