import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_app_bar.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconBackPressed: () => Navigator.pop(context),
      ),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: ThankYouViewBody(),
      ),
    );
  }
}
