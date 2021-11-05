import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/card_image_list.dart';
import 'package:flutter_application_curso_platzi/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack(title: "Popular"),
        const CardImageList(),
      ],
    );
  }
}
