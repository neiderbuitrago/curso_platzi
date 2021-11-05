// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class BotonPurple extends StatelessWidget {
  final String texto;
  const BotonPurple({required this.texto, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$texto'),
          duration: const Duration(seconds: 1),
        ));
        //     ScaffoldMessenger.showSnackBar(SnackBar(content: Text('$texto')));
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB2FFFF),
              Color(0xff4268D3),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Center(
          child: Text(
            texto,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
