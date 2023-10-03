import 'package:flutter/material.dart';
import 'package:suplements_app/screens/product/components/product_content_elements.dart';
class BodyProduct extends StatelessWidget {
  const BodyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ProductContentElements(),
      ),
    );
  }
}

