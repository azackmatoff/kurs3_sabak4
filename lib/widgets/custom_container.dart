import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    @required this.onTap,
    this.color,
    Key key,
  }) : super(key: key);

  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color ?? Colors.accents,
        child: InkWell(
          onTap: onTap,
        ),
      ),
    );
  }
}

 // playSound(noteNumber);
            // //bul jon gana Misal
            // // Egerde noteNumber 3ko barabar bolso gana ishteyt
            // if (noteNumber == 3) {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => MyHomePage()));
            // }