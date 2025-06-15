import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        Image.asset(AppImageAssets.imagesBasketImage),
        SizedBox(height: 25),
        OrderInfoItem(title: 'Order Subtotal', value: '\$42.97'),
        SizedBox(height: 3),
        OrderInfoItem(title: 'Discount', value: '\$0'),
        SizedBox(height: 3),
        OrderInfoItem(title: 'Shipping', value: '\$8'),
        SizedBox(height: 2),
        Divider(height: 30, indent: 35, endIndent: 35, thickness: 2, color: Color(0xFFC7C7C7)),
        OrderInfoItem(title: 'Total', value: '\$50.97', isTotalPrice: true),
      ],
    );
  }
}
