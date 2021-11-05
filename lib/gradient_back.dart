import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget {
  String title = " ";
  double? height = 0.0;
  GradientBack({Key? key, required this.title, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
          colors: [
            Color(0xFFB2FFFF),
            Color(0xff4268D3),
          ],
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Lato',
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
