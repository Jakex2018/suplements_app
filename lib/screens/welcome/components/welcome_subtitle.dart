import 'package:flutter/material.dart';

class WelcomeSubtitle extends StatelessWidget {
  const WelcomeSubtitle({
    super.key, required this.subtitle,
  });

  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Text(subtitle, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),);
  }
}