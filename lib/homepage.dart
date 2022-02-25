import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'people.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final items = const [
    Icon(
      Icons.people,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
    Icon(
      Icons.add,
      size: 30,
    ),
    Icon(
      Icons.search_outlined,
      size: 30,
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: Colors.blue[300],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getWidget(index: index)),
    );
  }

  Widget getWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = People(
          title: 'People Page',
          icon: Icons.people,
        );
        break;
      case 1:
        widget = People(
          title: 'Person Page',
          icon: Icons.person,
        );
        break;
      case 2:
        widget = People(
          title: 'Add Page',
          icon: Icons.add,
        );
        break;
      case 3:
        widget = People(
          title: 'Search Page',
          icon: Icons.search_sharp,
        );
        break;

      default:
        widget = People(
          title: 'Search Page',
          icon: Icons.search_sharp,
        );
        break;
    }
    return widget;
  }
}
