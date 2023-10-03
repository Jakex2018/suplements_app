import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';
import 'package:suplements_app/screens/home/screen_home.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenHome(),));
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: aDefaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: 50 , vertical: 20),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius:BorderRadius.circular(20)
        ),
        child: const Text('Get Started' , style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
      ),
    );
  }
}