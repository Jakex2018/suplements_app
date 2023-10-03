import 'package:flutter/material.dart';
import 'package:suplements_app/screens/welcome/components/welcome_button.dart';
import 'package:suplements_app/screens/welcome/components/welcome_subtitle.dart';
import 'package:suplements_app/screens/welcome/components/welcome_title.dart';

class BodyWelcome extends StatefulWidget {
  const BodyWelcome({super.key});

  @override
  State<BodyWelcome> createState() => _BodyWelcomeState();
}

class _BodyWelcomeState extends State<BodyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/welcome.jpg', fit: BoxFit.cover,),
        Container(
          height: 500,
          width: 500,
          color: const Color(0xff252525).withOpacity(0.4)
        ),
        const Positioned(
          top: 300,
          left: 50,
          child: Column(
            children: [
              WelcomeTitle(title: 'FITNNES PROTEIN',),
              SizedBox(height: 20,),
              WelcomeSubtitle(subtitle: 'Buy a Whey Protein now dfd',),
              SizedBox(height: 30,),
              WelcomeButton()
            ],
          ),
        ),
        const Positioned(
          top: 700,
          child: Text('Fitnnes@COPYRIGHT 2023 derechos reservados',style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}