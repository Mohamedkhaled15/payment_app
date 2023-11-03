import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/widgets/thank_you_card_info_widget.dart';

import 'custome_payment_item_info.dart';
import 'order_info_item.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFededed),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 56, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.style20),
            const SizedBox(height: 42),
            const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(height: 20),
            const OrderInfoItem(
              title: 'Total',
              value: '\$100.00',
              style: Styles.style25,
            ),
            const SizedBox(height: 20),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/barcode.svg'),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF34A853),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .16 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
