import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/pay_detailes_body.dart';

import '../../../../../widgets/app_bar_item.dart';
import '../thank_you_screene/thank_you_view.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Payment Details',
      ),
      body: PaymentDetailsBody(),
    );
  }
}
