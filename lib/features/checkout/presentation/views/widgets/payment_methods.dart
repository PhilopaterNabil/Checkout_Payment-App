import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaymentMethodItem(imagePath: AppImageAssets.imagesCard, isSelected: true),
        PaymentMethodItem(imagePath: AppImageAssets.imagesPaypal),
        PaymentMethodItem(imagePath: AppImageAssets.imagesMasterCard),
      ],
    );
  }
}