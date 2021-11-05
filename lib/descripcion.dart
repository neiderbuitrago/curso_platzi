import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/boton_purple.dart';
import 'package:flutter_application_curso_platzi/conponentes.dart';

// ignore: must_be_immutable
class Descripcion extends StatelessWidget {
  String? sitio;
  int likes;
  String descripcionSitio;

  Descripcion(
      {Key? key,
      this.sitio,
      required this.likes,
      required this.descripcionSitio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStart = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: Row(
            children: [
              Text(
                sitio ?? "",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
                textAlign: TextAlign.left,
              ),
              const SizedBox(width: 10),
              Row(
                children: starCount(count: 5, size: 33),
              )
            ],
          ),
        ),
      ],
    );
    final descripcion = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descripcionSitio,
        style: const TextStyle(fontSize: 15, color: Colors.black54),
        textAlign: TextAlign.left,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStart,
        descripcion,
        const BotonPurple(
          texto: "Ver más",
          //onPressed: () {},
        ),
      ],
    );
  }
}
