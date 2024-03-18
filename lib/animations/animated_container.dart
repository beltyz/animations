import 'package:flutter/material.dart';

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
  double boxHeight = 100;
  double boxWidth = 100;
  double boxHeight2 = 100;
  double boxWidth2 = 100;
  double boxHeight3 = 100;
  double boxWidth3 = 100;
  var boxColor = Colors.deepPurple;
  double boxX = 10.0;
  double boxY = 10.0;

  void _expandBox1() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _expandBox2() {
    setState(() {
      boxWidth2 = 300;
      boxHeight2 = 300;
    });
  }

  void _expandBox3() {
    setState(() {
      boxHeight3 = 300;
      boxWidth3 = 300;
    });
  }

  void _changeColor() {
    setState(() {
      boxColor = Colors.blue;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 155, 214, 151),
        body: Stack(children: [
          Column(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                alignment: Alignment(10.0, -1.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.menu_rounded,
                        size: 50.0,
                        color: Colors.white,
                      ),
                      Text(
                        "QUEM SOMOS",
                      ),
                      Text(
                        "QUEM SOMOS",
                      ),
                      Text(
                        "QUEM SOMOS",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "QUEM SOMOS",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
          // GestureDetector(
          //   onTap: _moveBox,
          //   child: AnimatedContainer(
          //     color: Colors.white,
          //     duration: Duration(seconds: 1),
          //     alignment: Alignment(-1.0, 0.0),
          //     child: Container(
          //       height: 100,
          //       width: 100,
          //       color: boxColor,
          //     ),
          //   ),
          // ),
     //   ]),
     // ),
      //body: Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      // children: [
      // GestureDetector(
      //   onTap: _moveBox,
      //   child: AnimatedContainer(
      //     color: Colors.white,
      //     duration: Duration(seconds: 1),
      //     alignment: Alignment(boxX, boxY),
      //     child: Container(
      //       height: boxHeight,
      //       width: boxWidth,
      //       color: boxColor,
      //     ),
      //   ),
      // ),
      // GestureDetector(
      //   onTap: _expandBox2,
      //   child: AnimatedContainer(
      //     color: Colors.pink,
      //     duration: Duration(seconds: 1),
      //     alignment: Alignment(boxX, boxY),
      //     child: Container(
      //       height: boxHeight2,
      //       width: boxWidth2,
      //       color: boxColor,
      //     ),
      //   ),
      // ),

      //  ],
  //  );
    // );
  //}
//}
