class PaymentIntentInputModel{

  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency, required String customerId});
  

  toJeson(){
    return {
      'amount': amount,
      'currency': currency,
      

    };
  }
}