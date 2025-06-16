import 'package:checkout_payment_app/checkout_payment_app.dart';
import 'package:checkout_payment_app/core/utils/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutPaymentApp());
}
