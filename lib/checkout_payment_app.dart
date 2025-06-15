import 'package:checkout_payment_app/features/checkout/presentation/views/my_card_view.dart';
import 'package:flutter/material.dart';

class CheckoutPaymentApp extends StatelessWidget {
  const CheckoutPaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCartView(),
    );
  }
}
