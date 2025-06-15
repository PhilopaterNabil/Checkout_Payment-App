import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem(
      {super.key, required this.title, required this.value, this.isTotalPrice = false});

  final String title, value;
  final bool isTotalPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: isTotalPrice
                  ? AppTextStyles.font24BlackSemiBold
                  : AppTextStyles.font18BlackRegular),
          Text(value,
              style: isTotalPrice
                  ? AppTextStyles.font24BlackSemiBold
                  : AppTextStyles.font18BlackRegular),
        ],
      ),
    );
  }
}
