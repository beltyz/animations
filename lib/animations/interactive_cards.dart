import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//  Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff8CB9BD),
//       body: ListView.builder(
//         itemCount: 4,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InteractiveCards(
//                       image: cards[index].image,
//                       title: cards[index].title,
//                       description: cards[index].description)
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Color(0xff8CB9BD),
//     body: Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           InteractiveCards(
//               image: cards[0].image,
//               title: cards[0].title,
//               description: cards[0].description),
//           InteractiveCards(
//               image: cards[1].image,
//               title: cards[1].title,
//               description: cards[1].description),
//           InteractiveCards(
//               image: cards[2].image,
//               title: cards[2].title,
//               description: cards[2].description),
//           InteractiveCards(
//               image: cards[3].image,
//               title: cards[3].title,
//               description: cards[3].description),
//         ],
//       ),
//     ),
//   );
// }

class Interactive_Cards extends StatefulWidget {
  const Interactive_Cards({super.key});

  @override
  State<Interactive_Cards> createState() => _Interactive_CardsState();
}

class _Interactive_CardsState extends State<Interactive_Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8CB9BD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InteractiveCards(
                image: cards[0].image,
                title: cards[0].title,
                description: cards[0].description),
            InteractiveCards(
                image: cards[1].image,
                title: cards[1].title,
                description: cards[1].description),
            InteractiveCards(
                image: cards[2].image,
                title: cards[2].title,
                description: cards[2].description),
            InteractiveCards(
                image: cards[3].image,
                title: cards[3].title,
                description: cards[3].description),
          ],
        ),
      ),
    );
  }
}

class Card {
  String title;
  String description;
  Image image;

  Card({required this.title, required this.description, required this.image});
}

List<Card> cards = [
  Card(
      title: "Fixed-wing",
      description:
          "A fixed-wing drone has one rigid wing that is designed to look and work like an aeroplane, providing the lift rather than vertical lift rotors.",
      image: Image.asset('assets/Interactive Cards_0.jpg')),
  Card(
      title: "Multi-rotor",
      description:
          "They are called multi-rotor because they have more than one motor, more commonly tricopters (3 rotors), quadcopters (4 rotors), hexacopters (6 rotors) and octocopters (8 rotors)",
      image: Image.asset('assets/Interactive Cards_1.jpg')),
  Card(
      title: "Single-rotor helicopter",
      description:
          "A single-rotor has just one rotor, which is like one big spinning wing, plus a tail rotor to control direction and stability.",
      image: Image.asset('assets/Interactive Cards_2.jpg')),
  Card(
      title: "Fixed-wing hybrid VTOL",
      description:
          "Hybrid VTOL drone types merge the benefits of fixed-wing and rotor-based designs. This drone type has rotors attached to the fixed wings, allowing it to hover and take off and land vertically.",
      image: Image.asset('assets/Interactive Cards_3.jpg')),
];

class InteractiveCards extends StatefulWidget {
  final Image image;
  final String title;
  final String description;
  InteractiveCards(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  State<InteractiveCards> createState() => _InteractiveCardsState();
}

class _InteractiveCardsState extends State<InteractiveCards> {
  double height = 300.0;
  double width = 100.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 400.0;
          width = 400.0;
        });
      },
      onExit: (event) {
        setState(() {
          height = 300.0;
          width = 100.0;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.all(10.0),
        curve: Curves.easeOut,
        height: height,
        width: width,
        duration: Duration(milliseconds: 575),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: widget.image.image,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.transparent, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedRotation(
                duration: Duration(milliseconds: 375),
                turns: height == 300 ? -1 / 4 : 0.0,
                curve: Curves.easeOut,
                child: AnimatedPadding(
                  duration: Duration(milliseconds: 375),
                  padding: EdgeInsets.symmetric(
                      vertical: height == 300 ? 20.0 : 0.0),
                  child: Text(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 375),
                curve: Curves.easeOut,
                height: height == 300.0 ? 40.0 : 80.0,
                width: 320.0,
                color: Colors.transparent,
                padding: EdgeInsets.only(top: height == 300.0 ? 100.0 : 20.0),
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 375),
                  opacity: height == 300 ? 0.0 : 1.0,
                  child: OverflowBox(
                    minHeight: 80.0,
                    minWidth: 300.0,
                    maxHeight: 100.0,
                    maxWidth: 320.0,
                    child: Text(
                      widget.description,
                      style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
