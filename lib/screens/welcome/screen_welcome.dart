import 'package:flutter/material.dart';
import 'package:suplements_app/screens/welcome/components/body_welcome.dart';
class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: BodyWelcome(),
    );
  }
}