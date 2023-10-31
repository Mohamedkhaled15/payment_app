import 'package:flutter/material.dart';

import '../../../../../widgets/payment_card.dart';

class PaymentMethods extends StatefulWidget {
  PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodsItem= [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/apple.svg'
  ];
int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(

        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
              onTap: (){
                activeIndex=index;
                setState(() {

                });
              },
              child: PaymentCards(image: paymentMethodsItem[index],isActive: activeIndex==index,)),
        ),
        itemCount: paymentMethodsItem.length,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}