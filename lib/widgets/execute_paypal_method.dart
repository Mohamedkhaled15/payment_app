import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import '../features/checkout/data/models/amount_model/amount_model.dart';
import '../features/checkout/data/models/items_list_model/items_list_model.dart';

void exceutePaypalPayment(BuildContext context,
    ({AmountModel amount, ItemsListModel itemList}) transactionsData) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.clintId,
      secretKey:ApiKeys.secretPaypalKey ,
      transactions: [
        {
          "amount": transactionsData.amount.toJson(),
          "description": "The payment transaction description.",
           // "payment_options": {
           //   "allowed_payment_method":
           //       "INSTANT_FUNDING_SOURCE"
           // },
          "item_list": transactionsData.itemList.toJson(),
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.pop(context);
      },
      onError: (error) {
        log("onError: $error");
        Navigator.pop(context);
      },
      onCancel: () {
        print('cancelled:');
        Navigator.pop(context);
      },
    ),
  ));
}
