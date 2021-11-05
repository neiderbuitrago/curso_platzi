import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        children: [
          CardImage(pathImage: "assets/img/isla.jpg"),
          CardImage(pathImage: "assets/img/florecencia.jpg"),
          CardImage(pathImage: "assets/img/montanas.jpg"),
          CardImage(pathImage: "assets/img/puente.jpg"),
          CardImage(pathImage: "assets/img/viajero.jpg"),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
