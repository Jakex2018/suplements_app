import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text('Hydrolyzed protein: the perfect choice for quick muscle recovery.' ,style: TextStyle(
        color: Colors.black38,fontWeight: FontWeight.bold, height: 1.4,fontSize: 15
      ),textAlign: TextAlign.start),
    );
  }
}