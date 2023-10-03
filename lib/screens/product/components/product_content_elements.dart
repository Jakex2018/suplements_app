import 'package:flutter/material.dart';
import 'package:suplements_app/screens/home/components/text_card_subtitle.dart';
import 'package:suplements_app/screens/home/components/text_card_title.dart';
import 'package:suplements_app/screens/product/components/product_add_to_cart_buttom.dart';
import 'package:suplements_app/screens/product/components/product_button.dart';
import 'package:suplements_app/screens/product/components/product_description.dart';
import 'package:suplements_app/screens/product/components/product_volume.dart';
class ProductContentElements extends StatelessWidget {
  const ProductContentElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Center(
          child: Image.asset('assets/images/protein.png',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*0.38,),
        ),
         const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCardSubtitle(subtitleProduct: 'Best Protein', colors: Colors.black26, weight: FontWeight.bold, fontsize: 19),
              SizedBox(height: 10),
              TextCardTitle(titleProduct: 'Hydrolized', colors: Colors.black, weight: FontWeight.bold, fontsize: 30),
              SizedBox(height: 15),
              ProductButton(),
              SizedBox(height: 10),
              ProductDescription(),
              SizedBox(height: 10),
              ProductVolume(),
              SizedBox(height: 30),
              ButtonAddToCartProduct()
            ],
          ),
        )
      ],
    );
  }
}

