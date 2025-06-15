import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 64),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ThankYouCard(),
              Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.210,
                left: 45,
                right: 45,
                child: CustomDashedLine(),
              ),
              Positioned(
                left: 0,
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                child: CircleAvatar(backgroundColor: Colors.white),
              ),
              Positioned(
                right: 0,
                bottom: MediaQuery.sizeOf(context).height * 0.2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: -20,
                child: CustomCheckIcon(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
