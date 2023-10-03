import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';
import 'package:suplements_app/screens/home/components/text_card_subtitle.dart';
import 'package:suplements_app/screens/home/components/text_card_title.dart';

import 'package:suplements_app/screens/product/screen_product.dart';
class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key, required this.image, required this.titleProduct, required this.subtitleProduct, required this.price,
  });
  final String image,titleProduct,subtitleProduct;
  final int price;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenProduct(),));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Container(
            width: 140,
            height: 175,
            decoration: BoxDecoration(
              color: kPrimaryColor,borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 7,top: 7),
                  width: 140,
                  height: 175,
                  decoration: BoxDecoration(
                   color: Colors.white,borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Positioned(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: aDefaultPadding/2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(image , fit: BoxFit.cover, height: 70,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCardTitle(titleProduct: titleProduct, colors: Colors.black, weight:FontWeight.bold, fontsize: 15,),
                    const SizedBox(height: 5),
                    TextCardSubtitle(subtitleProduct: subtitleProduct, colors: Colors.black38, weight: FontWeight.normal, fontsize: 13,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$$price', style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 14),),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle_rounded,color: kPrimaryColor,size: 30,))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
