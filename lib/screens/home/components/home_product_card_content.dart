import 'package:flutter/material.dart';
import 'package:suplements_app/screens/home/components/home_product_card.dart';

class HomeProductCardContent extends StatelessWidget {
  const HomeProductCardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                HomeProductCard(image: 'assets/images/protein.png', titleProduct: 'Whey Isolate', subtitleProduct: 'Protein', price: 150,),
                SizedBox(width: 20,),
                HomeProductCard(image: 'assets/images/protein.png', titleProduct: 'Whey Isolate', subtitleProduct: 'Protein', price: 150,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Row(
              children: [
                HomeProductCard(image: 'assets/images/protein.png', titleProduct: 'Whey Isolate', subtitleProduct: 'Protein', price: 150,),
                SizedBox(width: 20,),
                HomeProductCard(image: 'assets/images/protein.png', titleProduct: 'Whey Isolate', subtitleProduct: 'Protein', price: 150,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}