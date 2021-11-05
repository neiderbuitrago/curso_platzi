import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/descripcion.dart';
import 'package:flutter_application_curso_platzi/header_appbar.dart';
import 'package:flutter_application_curso_platzi/review_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //const bool imagen = true;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                const HeaderAppBar(),
                SizedBox(
                  child: Descripcion(
                    descripcionSitio:
                        "En Aruba queremos extender nuestra felicidad porque hemos logrado la inmunidad colectiva con el 70% de la población vacunada y, por eso, estamos emocionados para recibir a todos los turistas que nos visiten con calidez, gratitud y sobre todo, con seguridad y bienestar,  que son nuestra prioridad más importante.",
                    likes: 5,
                    sitio: "Aruba1",
                  ),
                ),
                const SizedBox(child: ReviewList()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
