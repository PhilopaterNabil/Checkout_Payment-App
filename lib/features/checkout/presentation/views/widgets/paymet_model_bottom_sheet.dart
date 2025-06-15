import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymetModelBottomSheet extends StatelessWidget {
  const PaymetModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethods(),
          SizedBox(height: 32),
          CustomButton(title: 'Continue', onPressed: () {}),
        ],
      ),
    );
  }
}
