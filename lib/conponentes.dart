import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/floating_action_button.dart';

star({required double size}) {
  return Container(
    margin: const EdgeInsets.only(
      top: 1,
      right: 1,
    ),
    child: Icon(
      Icons.star,
      color: const Color(0xFFf2C611),
      size: size,
    ),
  );
}

starHalf({required double size}) {
  return Container(
    margin: const EdgeInsets.only(
      top: 1,
      right: 1,
    ),
    child: Icon(
      Icons.star_half,
      color: const Color(0xFFf2C611),
      size: size,
    ),
  );
}

starBorder({required double size}) {
  return Container(
    margin: const EdgeInsets.only(
      top: 1,
      right: 1,
    ),
    child: Icon(
      Icons.star_border,
      color: const Color(0xFFf2C611),
      size: size,
    ),
  );
}

//funcion para crear una estrellas de 5
starCount({required double count, required double size}) {
  final maxStars = count <= 5 ? count : 5;
  List<Widget> lista = [];
  for (int i = 0; i < maxStars; i++) {
    if (i == maxStars.toInt()) {
      lista.add(starHalf(size: size));
    } else {
      lista.add(star(size: size));
    }
  }
  if (lista.length < 5) {
    int starFalta = 5 - lista.length;
    for (int i = 0; i < starFalta; i++) {
      lista.add(starBorder(size: size));
    }
  }
  return lista;
}

imageCircle({required String pathImage, required double size}) {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
      bottom: 20,
    ),
    width: size,
    height: size,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(pathImage),
      ),
    ),
  );
}

rowIconos() {
  List<Widget> lista = [
    FloatingActionButton1(
      icon: const Icon(
        Icons.account_circle_sharp,
        color: Color(0xff4268D3),
      ),
      onPressed: () {},
      mini: true,
    ),
    FloatingActionButton1(
      icon: const Icon(
        Icons.favorite_border_sharp,
        color: Color(0xff4268D3),
      ),
      onPressed: () {},
      mini: true,
    ),
    FloatingActionButton1(
      icon: const Icon(Icons.add, color: Colors.black),
      onPressed: () {},
      backgroundColor: Colors.white,
    ),
    FloatingActionButton1(
      icon: const Icon(
        Icons.share_sharp,
        color: Color(0xff4268D3),
      ),
      onPressed: () {},
      mini: true,
    ),
    FloatingActionButton1(
      icon: const Icon(
        Icons.date_range_outlined,
        color: Color(0xff4268D3),
      ),
      onPressed: () {},
      mini: true,
    ),
  ];
  return Padding(
    padding: const EdgeInsets.only(
      top: 188,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: lista,
    ),
  );
}
