import 'package:flutter/material.dart';
import 'package:suplements_app/constant.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['All' , 'Hidrolized','Isolate'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(vertical: aDefaultPadding/4),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          final isSelected = index == selectIndex;
          final textLength = categories[index].length;
          return GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: aDefaultPadding *1.5),
                child: Text(category, style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17)),
              ),
              if(isSelected)
              Positioned(
                bottom: 0,
                left: 25,
                child: Container(
                  width: isSelected ? textLength *8.9 : 0.0,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              )
            ],
          ),
        );
      }
      ),

    );
  }
}