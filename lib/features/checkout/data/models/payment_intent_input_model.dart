class PaymentIntentInputModel {
  final String amount;
  final String currency;
  String? description;
  String? statementDescriptor;
  String? statementDescriptorSuffix;
  String? metadata;

  PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() => {
        'amount': amount,
        'currency': currency,
      };
}
