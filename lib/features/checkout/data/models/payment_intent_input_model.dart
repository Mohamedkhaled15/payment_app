class PaymentIntentInputModel{

  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  

  toJeson(){
    return {
      'amount': amount,
      'currency': currency,
      

    };
  }
}