import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/payment_list_view.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_screene/thank_you_view.dart';
import 'package:payment_app/widgets/button.dart';
import 'custome_payment_credit_card.dart';

class PaymentDetailsBody extends StatefulWidget {
  PaymentDetailsBody({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentMethods()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autoValidateMode: autoValidateMode,
        )),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: CustomButton(
                    title: 'Pay',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        log('payment');
                      } else {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ThankYouView();
                        }));
                        autoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                ))),
      ],
    );
    // const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 20),
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           PaymentCards(image: 'assets/images/card.svg'),
    //           PaymentCards(image: 'assets/images/paypal.svg'),
    //           PaymentCards(image: 'assets/images/apple.svg'),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
