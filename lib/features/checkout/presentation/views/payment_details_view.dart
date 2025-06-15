import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconBackPressed: () => Navigator.pop(context),
        title: 'Payment Details',
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
