import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({Key? key, required this.title, required this.value, required this.style}) : super(key: key);
  final String title,value;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Text(
            title,
            textAlign: TextAlign.center,
            style:style
        ),
        const Spacer(),
        Text(
            value,
            textAlign: TextAlign.center,
            style:style
        ),
      ],
    );
    return  ListTile(

      leading: Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18
      ),
      trailing: Text(
          value,
          textAlign: TextAlign.center,
          style:Styles.style18
      ),
    );
  }
}