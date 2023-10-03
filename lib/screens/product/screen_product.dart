import 'package:flutter/material.dart';
import 'package:suplements_app/components/bottom_nav_bar.dart';
import 'package:suplements_app/screens/product/components/body.dart';

class ScreenProduct extends StatelessWidget {
  const ScreenProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarProduct(context),
      body: const BodyProduct(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBarProduct(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        child: IconButton(onPressed: (){Navigator.pop(context);}
        , icon: const Icon(Icons.arrow_back,color: Colors.black,size: 40)),
      ),
    );
  }
}