import 'package:flutter/material.dart';

class BigText extends StatelessWidget {

  final Color color;
  final String text;
  double size;
  TextOverflow overflow;

   BigText({super.key,
    this.color= const Color(0XFF332d2b),
    this.size = 20,
    required this.text,
    this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
