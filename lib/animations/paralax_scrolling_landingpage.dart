import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class paralax_scrolling extends StatefulWidget {
  const paralax_scrolling({super.key});

  @override
  State<paralax_scrolling> createState() => _paralax_scrollingState();
}

class _paralax_scrollingState extends State<paralax_scrolling> {
  List<String> texts = ["This", 'is', 'Parallax', 'Scroll'];

  late ScrollController controller;

  void initState() {
    controller = ScrollController();
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 4,
        controller: controller,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(),
            child: Stack(children: [
              Container(
                transform: Matrix4.identity()
                  ..translate(
                      0.0,
                      controller.hasClients
                          ? (-(index * MediaQuery.of(context).size.height) +
                                  controller.position.pixels) /
                              2
                          : 0.0),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/paralax_${index}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Text("${texts[index]}",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kaushanScript(
                        color: Colors.white, fontSize: 100.0)),
              )
            ]),
          );
        },
      ),
    );
  }
}
