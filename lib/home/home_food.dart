import 'package:e_commerce/util/app_colors.dart';
import 'package:e_commerce/widgets/food_page_body.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/smal_text.dart';
import 'package:flutter/material.dart';

class HomeFood extends StatefulWidget {
  const HomeFood({super.key});

  @override
  State<HomeFood> createState() => _HomeFoodState();
}

class _HomeFoodState extends State<HomeFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45,bottom: 15),
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   Column(
                    children: [
                        BigText(text: "Bangladesh",color: AppColors.mainColor,size: 20,),
                        Row(
                          children: [
                            SmalText(text:"Narsingdi",color: Colors.black54,),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child:  const Icon(Icons.search,color:Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
              ],
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
