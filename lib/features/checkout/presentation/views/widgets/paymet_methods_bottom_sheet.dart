import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymetMethodsBottomSheet extends StatefulWidget {
  const PaymetMethodsBottomSheet({super.key});

  @override
  State<PaymetMethodsBottomSheet> createState() => _PaymetMethodsBottomSheetState();
}

class _PaymetMethodsBottomSheetState extends State<PaymetMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    index == 0? isPaypal = false : isPaypal = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethods(updatePaymentMethod: updatePaymentMethod),
          SizedBox(height: 32),
          CustomButtonBlocConsumer(isPaypal: isPaypal),
        ],
      ),
    );
  }
}
