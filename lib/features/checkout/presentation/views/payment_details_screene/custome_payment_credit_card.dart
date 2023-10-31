import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  CustomCreditCard({Key? key, required this.formKey, required this.autoValidateMode}) : super(key: key);
  final GlobalKey<FormState> formKey;
 final AutovalidateMode autoValidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber ='', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(

            cardBgColor: const Color(0xffE1C78F),
            cardType: CardType.mastercard,
            bankName: 'Credit',

          //  textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (value){}
        ),
        CreditCardForm(
          autovalidateMode: widget.autoValidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel){
              cardHolderName=creditCardModel.cardHolderName;
              expiryDate=creditCardModel.expiryDate;
              cardNumber=creditCardModel.cardNumber;
              cvvCode=creditCardModel.cvvCode;
              showBackView=creditCardModel.isCvvFocused;
              setState(() {

              });
            },
            formKey: widget.formKey
        ),

      ],
    );
  }
}
