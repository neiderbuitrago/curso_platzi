import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/floating_action_button.dart';

class ReviewImageProfile extends StatelessWidget {
  final String commentPhoto, title;
  final double viewPhoto;
  const ReviewImageProfile({
    Key? key,
    required this.commentPhoto,
    required this.title,
    required this.viewPhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // comentario de la foto
    final photoComment = Container(
      margin: const EdgeInsets.only(
        bottom: 5.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        commentPhoto,
        maxLines: 3,
      ),
    );

    final _title = Container(
      margin: const EdgeInsets.only(
        bottom: 10.0,
        left: 20.0,
        right: 20.0,
        top: 20.0,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    final _view = Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          const Text(
            'View',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          Text(
            '  $viewPhoto',
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
    final card = Container(
      height: 138.0,
      width: 320.0,
      margin: const EdgeInsets.all(0.0),
      decoration: const BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0, 8),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title,
          photoComment,
          _view,
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.7, 1.1),
      children: <Widget>[
        card,
        FloatingActionButton1(
          icon: const Icon(Icons.favorite_border),
          mini: true,
          onPressed: () {},
          backgroundColor: Colors.greenAccent,
        ),
      ],
    );
  }
}
