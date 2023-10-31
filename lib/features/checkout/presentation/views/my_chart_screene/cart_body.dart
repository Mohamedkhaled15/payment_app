import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/payment_list_view.dart';

import '../../../../../widgets/button.dart';
import '../../../../../widgets/order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20),
     child: Column(
       children: [
         Expanded(child: Image.asset('assets/images/charty.png',)),
         const SizedBox(height: 3,),
         const OrderInfoItem(title: 'Order Subtotal',value: '\$42.97',style: Styles.style18,),
         const SizedBox(height: 3,),
         const OrderInfoItem(title: 'Discount',value: '\$0',style: Styles.style18,),
         const SizedBox(height: 3,),
         const OrderInfoItem(title: 'Shipping',value: '\$0',style: Styles.style18,),
         const SizedBox(height: 10,),
         const Divider( endIndent: 12, indent: 12, thickness: 2,),
         const OrderInfoItem(title:'Total' ,value:'\$50.97' ,style: Styles.style25,),
         const SizedBox(height: 10,),
          CustomButton(title: 'Complete Payment',
              onTap: (){
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                builder:(context){
              
              return const PaymentMethodsBottomSheet();
            } );
           // Navigator.of(context).push(MaterialPageRoute(builder: (context){return PaymentDetails();}
           // )
           // );
         }
         ),
         const SizedBox(height: 12,),

       ],
     ),
   );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
          PaymentMethods(),
          SizedBox(height: 32,),

          CustomButton(title: 'Continue'),

        ],
      ),
    );
  }
}


