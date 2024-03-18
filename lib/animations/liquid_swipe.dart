import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Liquid_swipe extends StatefulWidget {
  const Liquid_swipe({super.key});

  @override
  State<Liquid_swipe> createState() => _Liquid_swipeState();
}

class _Liquid_swipeState extends State<Liquid_swipe> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height / 4,
      child: LiquidSwipe(
          enableSideReveal: true,
          slideIconWidget: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          pages: [
            Container(
              color: Colors.black,
              child: Center(child: Text("Page1")),
              //child:
              //Column(
              //children: [
              // Image.asset(
              //   "assets/novini.webp",
              //   width: width,
              //   height: height / 3,
              //   fit: BoxFit.cover,
              // ),
              //Text("Aktualności")
              // ],
              //),
            ),
            Container(
              color: Colors.purpleAccent,
              child: Center(child: Text("Page2")),
              // child: Column(
              //   children: [
              //     Image.asset(
              //       "assets/oNas.webp",
              //       width: width,
              //       height: height / 3,
              //       fit: BoxFit.cover,
              //     ),
              //     //Text("O Nas")
              //   ],
              // ),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text("Page3")),
              // child: Column(
              //   children: [
              //     Image.asset(
              //       "assets/franshiza.webp",
              //       width: width,
              //       height: height / 3,
              //       fit: BoxFit.cover,
              //     ),
              //     Text("Franczyza")
              //   ],
              // ),
            ),
          ]),
    );
  }
}
