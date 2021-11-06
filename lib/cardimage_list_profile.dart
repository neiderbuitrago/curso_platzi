import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/card_image_profile.dart';

class CardimageListProfile extends StatelessWidget {
  const CardimageListProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        children: const [
          CardProfile(
            pathImage: "assets/img/hotel_Cerro_Dorado.jpeg",
            width: double.infinity,
            title: 'Hotel Cerro Dorado',
            ommentPhoto:
                'Hotel Campestre Cerro Dorado se ubica en la localidad colombiana de Mariquita, entre preciosas montañas y a solo un par de kilómetros del aeropuerto de la ciudad',
            viewPhoto: 121554,
          ),
          CardProfile(
            pathImage: "assets/img/kualamelgar.jpg",
            width: double.infinity,
            title: 'kualamalgar',
            ommentPhoto:
                '¡Vuelve a Soñar con tu Proximo Viaje! Aprovecha las Ofertas y Reserva Flexible en Hoteles. Elije tu Hotel Barato con Flexibilidad. Si Tus Planes Cambian, Tu Viaje Tambien.',
            viewPhoto: 5565,
          ),
          CardProfile(
            pathImage: "assets/img/la_rivera.jpg",
            width: double.infinity,
            title: 'Finca La Rivera',
            ommentPhoto:
                '*Montaña *Conservación *Libertad *Glamping *Cabañas *Sostenibilidad',
            viewPhoto: 5452355,
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
