import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      // height: 73,
      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child:  Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg',height: 30,),
          const SizedBox(width: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'Credit Card ',
                    style: Styles.style18
                ),
                TextSpan(
                    text: 'Mastercard **78 ',
                    style: Styles.style16
                ),
              ],
            ),
          )],
      ),
    );
  }
}