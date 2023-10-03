import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suplements_app/components/bottom_nav_bar.dart';
import 'package:suplements_app/screens/home/components/body.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight), // Ajusta la altura según tus necesidades
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 2),
          child: AppBarBuild(),
        ),
      ),
      body: const BodyHome(),
      bottomNavigationBar:const BottomNavBar(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar AppBarBuild() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/menu.svg')),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/notification.svg'))
      ],
    );
  }
}