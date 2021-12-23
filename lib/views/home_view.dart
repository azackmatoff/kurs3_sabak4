import 'package:flutter/material.dart';
import 'package:kurs3_sabak4/app_constants/app_colors.dart';

import 'package:kurs3_sabak4/repository/music_repository.dart';
import 'package:kurs3_sabak4/widgets/custom_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomContainer(
            onTap: () => musicRepository.playSound(1),
            color: AppColors.red,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(2),
            color: AppColors.orange,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(3),
            color: AppColors.yellow,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(4),
            color: AppColors.green,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(5),
            color: AppColors.greenDark,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(6),
            color: AppColors.blue,
          ),
          CustomContainer(
            onTap: () => musicRepository.playSound(7),
            color: AppColors.pinkDark,
          ),

          // buildContainer1(Color(0xffF44336), 'ads', true),
          // //Sozsuz ocheredke karap, katary mn jiberilet
          // buildContainer2(Colors.limeAccent, 'asd', false),
          // buildContainer3(tus: Colors.lightGreen),
          // buildContainer4(tus: Colors.pinkAccent),
        ],
      ),
    );
  }

  /// Refactoring den murunku kodtor
  // void playSound(int noteNumber) {
  //   audioCache.play('notes/note$noteNumber.wav');
  // }

  // Widget buildContainer(int noteNumber, {@required Color kolor}) {
  //   //Jani misal, baskani biline turgan kilali

  //   return Expanded(
  //     child: Material(
  //       color: kolor,
  //       child: InkWell(
  //         onTap: () {
  //           playSound(noteNumber);
  //           //bul jon gana Misal
  //           // Egerde noteNumber 3ko barabar bolso gana ishteyt
  //           if (noteNumber == 3) {
  //             Navigator.push(context,
  //                 MaterialPageRoute(builder: (context) => MyHomePage()));
  //           }
  //         },
  //       ),
  //     ),
  //   );

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
  // }

  /// Misaldar
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
