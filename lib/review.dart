import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/conponentes.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {
  Review({
    Key? key,
    required this.pathImage,
    required this.name,
    required this.details,
    required this.comment,
    required this.star,
  }) : super(key: key);

  String pathImage;
  String name;
  String details;
  String comment;
  double star;
  @override
  Widget build(BuildContext context) {
    //info del usuario
    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
      ),
    );
//nombre del usuario
    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(name),
    );
//detalles del usuario
    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        children: [
          Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
              color: Color(0xFF7A8FA6),
            ),
          ),
          const SizedBox(width: 10),
          Row(
            children: starCount(size: 20, count: star),
          )
        ],
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    ); //imagen del usuario
    final photo = imageCircle(pathImage: pathImage, size: 80.0);
    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
