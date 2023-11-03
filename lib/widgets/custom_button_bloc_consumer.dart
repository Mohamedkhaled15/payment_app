import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_screene/thank_you_view.dart';
import 'button.dart';
import 'execute_paypal_method.dart';
import 'get_transattions_data.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }));
        }
        else if (state is PaymentFailure) {
          Navigator.pop(context);
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
            onTap: () {
              //Stripe Payment
              /* PaymentIntentInputModel paymentIntentInputModel =
              // PaymentIntentInputModel(amount: '50',
              // currency: 'USD',
              // customerId: 'cus_OvwdDV1TDz3vFt');
              // BlocProvider.of<PaymentCubit>(context).makePayment(
              //     paymentIntentInputModel: paymentIntentInputModel);
              */

              var transactionsData = getTransactionsData();
              exceutePaypalPayment(context, transactionsData);
            },
            isLoading: state is PaymentLoading ? true : false,
            title: 'Continue');
      },
    );
  }
}
