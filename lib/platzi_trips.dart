import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/home_trips.dart';
import 'package:flutter_application_curso_platzi/profile.dart';
import 'package:flutter_application_curso_platzi/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTab = 0;
  final List<Widget> _children = [
    const MyHomePage(),
    const SearchTrips(),
    const Profile(),
  ];
  void onTapTaped(int index) {
    setState(() {
      indexTab = index;
      // ignore: avoid_print
      print(indexTab);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          currentIndex: indexTab,
          onTap: onTapTaped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
