import 'package:flutter/material.dart';

class People extends StatelessWidget {
  People({Key? key, required this.title, required this.icon}) : super(key: key);
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 100),
        CircleAvatar(
          radius: 70,
          child: Icon(
            icon,
            size: 120,
          ),
        ),
        const SizedBox(height: 100),
        Text(
          '$title Content',
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ]),
    );
  }
}
