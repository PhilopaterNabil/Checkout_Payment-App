import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key, required this.updatePaymentMethod});

  final Function({required int index}) updatePaymentMethod;

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int activeIndex = 0;
  void setActiveIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaymentMethodItem(
          onTap: () {
            setActiveIndex(0);
            widget.updatePaymentMethod(index: activeIndex);
          },
          imagePath: AppImageAssets.imagesCard,
          isSelected: activeIndex == 0,
        ),
        PaymentMethodItem(
          onTap: () {
            setActiveIndex(1);
            widget.updatePaymentMethod(index: activeIndex);
          },
          imagePath: AppImageAssets.imagesPaypal,
          isSelected: activeIndex == 1,
        ),
        // PaymentMethodItem(
        //   onTap: () => setActiveIndex(2),
        //   imagePath: AppImageAssets.imagesMasterCard,
        //   isSelected: activeIndex == 2,
        // ),
      ],
    );
  }
}
