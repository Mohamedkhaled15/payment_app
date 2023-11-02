import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';

import '../../features/checkout/data/models/payment_intent_input_model.dart';
import '../../features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  // final String secretKey='';
  final ApiService apiService=ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async{
    var response= await apiService.post(
    body: paymentIntentInputModel.toJson(),
    contentType: Headers.formUrlEncodedContentType,
    url: 'https://api.stripe.com/v1/payment_intents',
    token: ApiKeys.secretKey,
);

     var paymentIntentModel = PaymentIntentModel.fromJson( response.data );

     return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret }) async {
  await  Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: 'Mohamed_khaled',


        )
    );
  }

  Future displayPaymentSheet()async{

    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel})async{
    var paymentIntentModel=await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }



  Future<PaymentIntentModel> createCustomer(
      PaymentIntentInputModel paymentIntentInputModel) async{
    var response= await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url: 'https://api.stripe.com/v1/customers',
      token: ApiKeys.secretKey,
    );

    var paymentIntentModel = PaymentIntentModel.fromJson( response.data );

    return paymentIntentModel;
  }
}

