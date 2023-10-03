import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';
import 'package:suplements_app/screens/home/components/text_card_subtitle.dart';
import 'package:suplements_app/screens/home/components/text_card_title.dart';
class HomeWelcomeCardItems extends StatelessWidget {
  const HomeWelcomeCardItems({
    super.key, required this.image, required this.titleProduct, required this.subtitleProduct, required this.price,
  });
  final String image,titleProduct,subtitleProduct;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}



