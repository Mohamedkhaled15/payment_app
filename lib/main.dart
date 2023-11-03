import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/features/checkout/presentation/views/my_chart_screene/my_cart_view.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
/*
paymentIntentObject create payment intent (amount,currency).
init payment sheet (paymentIntentClintSecret).
presentPaymentSheet()
*/

/*
create payment intent(amount,currency,customerID)
create EphemeralKey (stripeVersion,customerId)
initPaymentSheet (SetupPaymentSheetParameter)
presentPaymentSheet(merchantDisplayName,intentClientSecret,ephemeralKeySecret)
*/
