import 'package:flutter/material.dart';

class CustomCheckCircle extends StatelessWidget
{
  const CustomCheckCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffededed),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xff34a853),
        child: Icon(Icons.check,color: Colors.white,size: 50,),
      ),
    );
  }
}