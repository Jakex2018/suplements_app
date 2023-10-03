import 'package:flutter/material.dart';
import 'package:suplements_app/screens/home/components/category_list.dart';
import 'package:suplements_app/screens/home/components/home_product_card_content.dart';
import 'package:suplements_app/screens/home/components/search_box.dart';
import 'package:suplements_app/screens/home/components/title_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleHome(),
            SearchBox(onChanged: (value) {},),
            const CategoryList(),
            const HomeProductCardContent()
          ],
        ),
      ),
    );
  }
}