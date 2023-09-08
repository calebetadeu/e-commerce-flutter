import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 220,
      child: PageView.builder(itemCount: 5,
          itemBuilder: (context,position){
          return _buildPageItem(position);
      }),
    );
  }
}
Widget _buildPageItem(int index){
  return Stack(
    children:[
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.redAccent,
          image:const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image/lasanha.png"
          )
          )
        ),
    ),
    ]
  );
}