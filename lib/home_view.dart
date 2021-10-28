import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kurs3_sabak4/main.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildContainer(1, kolor: Color(0xffF44336)),
          buildContainer(2, kolor: Color(0xffF89703)),
          buildContainer(3, kolor: Color(0xffFEEA3B)),
          buildContainer(4, kolor: Color(0xff4CAF50)),
          buildContainer(5, kolor: Color(0xff2D9688)),
          buildContainer(6, kolor: Color(0xff2996F4)),
          buildContainer(7, kolor: Color(0xff9B27B1)),

          // buildContainer1(Color(0xffF44336), 'ads', true),
          // //Sozsuz ocheredke karap, katary mn jiberilet
          // buildContainer2(Colors.limeAccent, 'asd', false),
          // buildContainer3(tus: Colors.lightGreen),
          // buildContainer4(tus: Colors.pinkAccent),
        ],
      ),
    );
  }

  void playSound(int noteNumber) {
    audioCache.play('notes/note$noteNumber.wav');
  }

  Widget buildContainer(int noteNumber, {@required Color kolor}) {
    //Jani misal, baskani biline turgan kilali

    return Expanded(
      child: Material(
        color: kolor,
        child: InkWell(
          onTap: () {
            playSound(noteNumber);

            if (noteNumber == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            }
          },
        ),
      ),
    );

    //Eski misal
    // return Expanded(
    //   child: GestureDetector(
    //     onTap: () {
    //       playSound(noteNumber);
    //     },
    //     child: Container(
    //       color: kolor,
    //     ),
    //   ),
    // );
  }

  //Misal
  kolaAlypKel(int akcha, Mashina mashina) {
    //return kolaSatipAl(akcha, mashina.klyuch)...
  }

//Sozsuz tus jiberish kerek
  Expanded buildContainer1(Color tus, String text, bool tuura) {
    return Expanded(
      child: Container(
        color: tus,
      ),
    );
  }

//Jiberbese bolot, oshondoy ele tus jiberilbese and lightBlue tus ber
  Expanded buildContainer2([Color tus, String text, bool kata]) {
    return Expanded(
      child: Container(
        color: tus,
      ),
    );
  }

// tus Jiberbese da bolot, birok aty menen koldonosun
  Expanded buildContainer3({Color tus}) {
    return Expanded(
      child: Container(
        color: tus,
      ),
    );
  }

// tus sozsuz jiberilishi kerek, aty mn koldonulat
  Expanded buildContainer4({@required Color tus}) {
    return Expanded(
      child: Container(
        color: tus,
      ),
    );
  }
}

// DRY - Don't Repeat Yourself
// UI - User Interface, Design, Front End
// Swift + uiKit
// SwiftUI

class Mashina {}
