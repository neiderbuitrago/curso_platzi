import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_curso_platzi/home_trips.dart';
import 'package:flutter_application_curso_platzi/profile.dart';
import 'package:flutter_application_curso_platzi/search_trips.dart';

class PlatziTripsCupertino extends StatefulWidget {
  const PlatziTripsCupertino({Key? key}) : super(key: key);

  @override
  _PlatziTripsCupertinoState createState() => new _PlatziTripsCupertinoState();
}

class _PlatziTripsCupertinoState extends State<PlatziTripsCupertino> {
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
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          // switch (index) {
          //   case 0:
          //     return CupertinoTabView(
          //       builder: (BuildContext context) => const MyHomePage(),
          //     );
          //   case 1:
          //     return CupertinoTabView(
          //       builder: (BuildContext context) => const SearchTrips(),
          //     );
          //   case 2:
          //     return CupertinoTabView(
          //       builder: (BuildContext context) => const Profile(),
          //     );
          //   default:
          //     return CupertinoTabView(
          //       builder: (BuildContext context) => const MyHomePage(),
          //     );
          // }
          return CupertinoTabView(
            builder: (BuildContext context) {
              return _children[index];
            },
          );
        },
      ),
    );
  }
}
