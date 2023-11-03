import 'package:flutter/material.dart';

import '../../../../../widgets/app_bar_item.dart';

import 'cart_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Chart'),
      body: const MyCartViewBody(),
    );
  }
}
