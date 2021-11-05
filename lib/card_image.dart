import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/floating_action_button.dart';

// ignore: must_be_immutable
class CardImage extends StatelessWidget {
  String pathImage = "assets/img/puente.jpg";
  CardImage({required this.pathImage, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          )
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButton1(
          icon: const Icon(Icons.favorite_border),
          mini: true,
          onPressed: () {},
        ),
      ],
    );
  }
}
