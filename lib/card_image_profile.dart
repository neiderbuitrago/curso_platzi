import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/review_profile.dart';

class CardProfile extends StatelessWidget {
  final String pathImage;
  final double width;
  final String title;
  final String ommentPhoto;
  final double viewPhoto;

  const CardProfile({
    Key? key,
    required this.pathImage,
    required this.width,
    required this.title,
    required this.ommentPhoto,
    required this.viewPhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 220.0,
      width: width,
      margin: const EdgeInsets.only(top: 90.0, left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
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
      alignment: const Alignment(0.0, 1.8),
      children: <Widget>[
        card,
        ReviewImageProfile(
          title: title,
          commentPhoto: ommentPhoto,
          viewPhoto: viewPhoto,
        ),
      ],
    );
  }
}
