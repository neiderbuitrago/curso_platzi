import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/cardimage_list_profile.dart';
import 'package:flutter_application_curso_platzi/conponentes.dart';
import 'package:flutter_application_curso_platzi/gradient_back.dart';
import 'package:flutter_application_curso_platzi/profile_datos.dart';

class HederProfile extends StatelessWidget {
  const HederProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: ListView(
        children: [
          Stack(
            children: [
              GradientBack(
                title: 'Profile',
                height: 400,
              ),
              const ProfileDatos(
                email: 'pathumtzoo1@gmail.com',
                name: 'Pathum Tzoo',
                size: 80,
                pathImage: 'assets/img/viajero.jpg',
              ),
              rowIconos(),
              const Padding(
                padding: EdgeInsets.only(top: 200),
                child: CardimageListProfile(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
