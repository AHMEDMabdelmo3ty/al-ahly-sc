import 'package:flutter/material.dart';

import 'package:swipe_deck/swipe_deck.dart';

import 'details_player.dart';
import 'player_model.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20.0);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(22, 33, 52, 1),
                  Color.fromRGBO(157, 11, 39, 1.0),
                  Color.fromRGBO(51, 3, 13, 1.0),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/19.png',
                    fit: BoxFit.fitHeight,
                    width: 195,
                    height: 235,
                  ),
                  Image.asset(
                    'assets/shenawy.png',
                    fit: BoxFit.fitHeight,
                    width: 195,
                    height: 235,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "AL AHLY SC",
                  style: TextStyle(
                      color: Color.fromARGB(243, 225, 153, 1),
                      fontSize: 50,
                      shadows: [
                        Shadow(
                          color: Colors.white60,
                          offset: Offset(1, 1),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: SwipeDeck(
                      startIndex: 1,
                      emptyIndicator: const Center(
                        child: Text("Nothing Here"),
                      ),
                      cardSpreadInDegrees: 11,
                      // Change the Spread of Background Cards
                      onSwipeLeft: () {
                        print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                      },
                      onSwipeRight: () {
                        print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                      },
                      onChange: (index) {
                        print(IMAGES[index]);
                      },
                      widgets: imagePlayer()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<PlayerModel> IMAGES = [
    PlayerModel(
      id: 1,
      image: 'assets/shenawy.png',
      fullname: 'Mohammed El Shenawy',
      nikename: 'El Shenawy',
      playerPlase: 'Goalkeeper',
      birthPlace: 'Kafr El Sheikh',
      biography:
          "He is Egypt’s best goalkeeper and was raised in Al Ahly as one of our homegrown players. He left the club to gain more experience and playtime in different Egyptian teams. After his great performance, he rejoined Al Ahly and proved himself as one of the top goalkeepers in Egypt. El Shenawy represented our national team in 2018 World Cup after his second season with Al Ahly.",
      assists: '0',
      birthDate: '1988-12-18',
      goals: '0',
      height: '191 cm',
      matches: '184',
      weight: '86 kg',
    ),
    PlayerModel(
      id: 19,
      image: 'assets/19.png',
      fullname: 'Mohamed Magdy',
      nikename: 'afsha',
      playerPlase: 'Midfielder',
      birthPlace: 'giza',
      biography:
          "Our playmaker who joined our club in the summer of 2019 from Pyramids FC and he succeeded to prove his abilities in a very short time as he became one of our team’s major players.",
      assists: '9',
      birthDate: '1996-03-05',
      goals: '7',
      height: '168 cm',
      matches: '42',
      weight: '69 kg',
    ),
    PlayerModel(
      id: 15,
      image: 'assets/15.png',
      fullname: 'Aliou Dieng',
      nikename: 'Dieng',
      playerPlase: 'Midfielder',
      birthPlace: 'Bamako - Mali',
      biography:
          "Dieng is one of our summer signings in 2019 who joined our club from Mouloudia Club d'Alger after his good performance with them and with the Malian Olympic national team.",
      assists: '3',
      birthDate: '1997-10-16',
      goals: '2',
      height: '186 cm',
      matches: '40',
      weight: '74 kg',
    ),
    PlayerModel(
      id: 21,
      image: 'assets/21.png',
      fullname: 'Ali Maaloul',
      nikename: 'Maaloul ',
      playerPlase: 'Left Back',
      birthPlace: 'Sfax -Tunisia',
      biography:
          "The international Tunisian player is considered as one of our most important and experienced players. He joined our club in the summer of 2016 from CS Sfaxien, and since then he contributed with his goals in the team's successes.",
      assists: '33',
      birthDate: '1990-01-01',
      goals: '32',
      height: '175 cm',
      matches: '136',
      weight: '72 kg',
    ),
  ];

  List<Widget> imagePlayer() {
    return IMAGES
        .map((e) => GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return DetailsPlayer(e);
              }));
            },
            child: Card(
              color: const Color.fromRGBO(22, 33, 52, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.id.toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(243, 225, 153, 1),
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 150,
                          child: Image.asset(
                            e.image,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Image.asset(
                          'assets/ahlylogo.png',
                          fit: BoxFit.fitHeight,
                          width: 35,
                          height: 35,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      e.nikename,
                      style: const TextStyle(
                          color: Color.fromARGB(243, 225, 153, 1),
                          fontSize: 20),
                    )
                  ],
                ),
              ),
            )))
        .toList();
  }
}
