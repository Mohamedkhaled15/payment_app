import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_screene/thank_you_body.dart';

import '../../../../../widgets/app_bar_item.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
          child: Transform.translate(
              offset: const Offset(0, -20),
              child: const buildThankYouViewBody())),
    );
  }
}
