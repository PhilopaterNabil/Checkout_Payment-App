import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        Image.asset(AppImageAssets.imagesBasketImage),
      ],
    );
  }
}
