import 'package:flutter/material.dart';

class ProductVolume extends StatelessWidget {
  const ProductVolume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Volume: 60 ml', style: TextStyle(
      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15
    ),);
  }
}