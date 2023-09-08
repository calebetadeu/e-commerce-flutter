import 'package:flutter/material.dart';

class SmalText extends StatelessWidget {

  final Color color;
  final String text;
  double size;
  double heigth;
  TextOverflow overFlow;

  SmalText({super.key,
    this.color= const Color(0XFF332d2b),
    this.size = 12,
    this.heigth = 1.2,
    required this.text,
    this.overFlow = TextOverflow.ellipsis
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size,
          color: color,
          height: heigth,
          fontWeight: FontWeight.w400
      ),
    );
  }
}
