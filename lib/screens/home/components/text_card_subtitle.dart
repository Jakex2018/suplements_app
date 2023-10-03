import 'package:flutter/material.dart';

class TextCardSubtitle extends StatelessWidget {
  const TextCardSubtitle({
    super.key,
    required this.subtitleProduct, required this.colors, required this.weight, required this.fontsize,
  });

  final String subtitleProduct;
  final Color colors;
  final FontWeight weight;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(subtitleProduct,style: TextStyle(color:colors,fontWeight: weight,fontSize: fontsize));
  }
}