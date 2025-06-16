import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymetMethodsBottomSheet extends StatelessWidget {
  const PaymetMethodsBottomSheet({super.key});

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
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
