import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.remove,color: Colors.white,)),
          const Text('2' , style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,)),
        ],
      ),
    );
  }
}