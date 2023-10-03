import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key, required, required this.onChanged,
  });
  final ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(aDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding, vertical: 1),
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        color:Color(0xffB8B5B5).withOpacity(0.2),
        borderRadius: BorderRadius.circular(20)
      ),
      child:TextField(
        onChanged:onChanged ,
        style: const TextStyle(color: Color(0xffA8A8A8)),
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(Icons.search_rounded),
          hintText: 'Find your Protein',
          hintStyle:TextStyle(color: Color(0xffB8B5B5))
        ),
      ),
    );
  }
}