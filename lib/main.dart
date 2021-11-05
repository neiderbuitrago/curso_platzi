import 'package:flutter/material.dart';
//import 'package:flutter_application_curso_platzi/home.dart';
//import 'package:flutter_application_curso_platzi/platzi_trips.dart';
import 'package:flutter_application_curso_platzi/platzi_trips_cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlatziTripsCupertino(),
      //const PlatziTrips(),
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
