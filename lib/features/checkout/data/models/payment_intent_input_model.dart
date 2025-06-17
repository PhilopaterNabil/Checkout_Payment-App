class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String customerId;
  String? description;
  String? statementDescriptor;
  String? statementDescriptorSuffix;
  String? metadata;

  PaymentIntentInputModel({required this.amount, required this.currency, required this.customerId});

  toJson() => {
        'amount': '${amount}00',
        'currency': currency,
        'customer': customerId,
      };
}
