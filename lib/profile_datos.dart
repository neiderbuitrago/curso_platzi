import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/conponentes.dart';

class ProfileDatos extends StatelessWidget {
  final String pathImage, name, email;
  final double size;
  const ProfileDatos({
    Key? key,
    required this.pathImage,
    required this.size,
    required this.email,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 25.0,
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
//detalles del usuario
    final userEmail = Container(
      margin: const EdgeInsets.only(
        left: 23.0,
      ),
      child: Text(
        email,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          fontWeight: FontWeight.w900,
          color: Colors.white60,
        ),
      ),
    );
    return Container(
      padding: const EdgeInsets.only(
        top: 85.0,
        left: 10.0,
        right: 10.0,
      ),
      //height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageCircle(pathImage: pathImage, size: 80.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              userName,
              userEmail,
            ],
          ),
        ],
      ),
    );
  }
}
