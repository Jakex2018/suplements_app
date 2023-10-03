import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';

class ButtonAddToCartProduct extends StatelessWidget {
  const ButtonAddToCartProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.7,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: const Center(
          child: Text('Add To Cart',style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30
          ),),
        ),
      ),
    );
  }
}