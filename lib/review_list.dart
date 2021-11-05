import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          pathImage: "assets/img/viajero.jpg",
          name: "Pedro ",
          details: "5 review 8 photos",
          comment: "Se pede descanzar y despertar la creatividad.",
          star: 4,
        ),
        Review(
          pathImage: "assets/img/naylen.jpg",
          name: "Naylen Ortegon",
          details: "1 review 6 photos",
          comment: "Es un lugar magnifico para conocer y disfrutar.",
          star: 2.5,
        ),
      ],
    );
  }
}
