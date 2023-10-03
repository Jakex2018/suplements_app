import 'package:flutter/material.dart';

class TextCardTitle extends StatelessWidget {
  const TextCardTitle({
    super.key,
    required this.titleProduct, required this.colors, required this.weight, required this.fontsize,
  });

  final String titleProduct;
  final Color colors;
  final FontWeight weight;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(titleProduct, style: TextStyle(color:colors,fontWeight: weight,fontSize: fontsize),);
  }
}