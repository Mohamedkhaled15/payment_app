import 'package:flutter/material.dart';

import '../features/checkout/presentation/views/payment_details_screene/payment_list_view.dart';
import 'button.dart';
import 'custom_button_bloc_consumer.dart';

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

          CustomButtonBlocConsumer(),

        ],
      ),
    );
  }
}

