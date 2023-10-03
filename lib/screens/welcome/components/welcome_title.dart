import 'package:flutter/material.dart';


class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize: 30),);
  }
}