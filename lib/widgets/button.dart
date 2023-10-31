import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, this.onTap}) : super(key: key);
final String title;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: ShapeDecoration(
          color: Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child:  Center(
          child: Text(
              title,
            textAlign: TextAlign.center,
            style: Styles.style22
          ),
        ),
      ),
    );
  }
}
