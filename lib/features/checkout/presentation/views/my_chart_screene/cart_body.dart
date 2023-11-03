import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:payment_app/features/checkout/presentation/manager/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_screene/payment_list_view.dart';

import '../../../../../widgets/button.dart';
import '../../../../../widgets/order_info_item.dart';
import '../../../../../widgets/payment_methods_bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/charty.png',
          )),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
            style: Styles.style18,
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: '\$0',
            style: Styles.style18,
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: '\$0',
            style: Styles.style18,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            endIndent: 12,
            indent: 12,
            thickness: 2,
          ),
          const OrderInfoItem(
            title: 'Total',
            value: '\$50.97',
            style: Styles.style25,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              title: 'Complete Payment',
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: PaymentMethodsBottomSheet(),
                      );
                    });
                // Navigator.of(context).push(MaterialPageRoute(builder: (context){return PaymentDetails();}
                // )
                // );
              }),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
