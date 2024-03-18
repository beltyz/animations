import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;

  @override
  void initState() {
    scrollController.addListener(() {
      //listener
      showbtn = true;
      print(scrollController.offset);
      //.offset is double value
      /* Outputs --------
          I/flutter (26854): 32.349831321022975
          I/flutter (26854): 33.07679332386385
          I/flutter (26854): 33.80375532670473
          I/flutter (26854): 34.530717329545666
          I/flutter (26854): 35.2576793323866
          I/flutter (26854): 35.62113813920479
          I/flutter (26854): 35.984641335227536
          I/flutter (26854): 36.34810014204572
          I/flutter (26854): 36.71160333806847
          I/flutter (26854): 37.07506214488666
          I/flutter (26854): 37.80202414772759
          I/flutter (26854): 38.16552734375034
      */

      setState(() {
        //update state
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Get Scroll Position in Flutter"),
          backgroundColor: Colors.redAccent),
      // floatingActionButton: Card(
      //     child: showbtn
      //         ? Text(
      //             "Scroll Position: " + scrollController.offset.toString(),
      //             style: TextStyle(fontSize: 20),
      //           )
      //         : Text("")),
      body: ListView(controller: scrollController, children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xffAA895F),
                Color(0xffE0D8CC),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
            // image: DecorationImage(
            //     image:
            //         AssetImage('assets/bg_croisisants_app.jpg'),
            //     fit: BoxFit.cover)
          ),
          //child: BackdropFilter(
          //  filter:
          //    ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmay),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nowość",
                  style: GoogleFonts.exo2(
                      textStyle: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 12,
              ),
              //buildIndicator()
            ],
          ),
          //),
        ),
      ]),
    );
  }
}
