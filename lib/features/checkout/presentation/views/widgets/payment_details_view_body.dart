import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethods()),
        const SliverToBoxAdapter(child: CustomCreditCard()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: CustomButton(
                onPressed: () {},
                title: 'Pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
