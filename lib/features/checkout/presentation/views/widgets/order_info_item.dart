import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key,
    required this.title,
    required this.value,
    this.isTotalPrice = false,
    this.isSemiBoldValue = false,
  });

  final String title, value;
  final bool isTotalPrice, isSemiBoldValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              isTotalPrice ? AppTextStyles.font24BlackSemiBold : AppTextStyles.font18BlackRegular,
        ),
        Text(
          value,
          style: isTotalPrice
              ? AppTextStyles.font24BlackSemiBold
              : isSemiBoldValue
                  ? AppTextStyles.font18BlackSemiBold
                  : AppTextStyles.font18BlackRegular,
        ),
      ],
    );
  }
}
