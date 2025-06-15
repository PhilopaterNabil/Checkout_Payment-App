import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      padding: EdgeInsets.only(left: 22, right: 23, top: 66),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFE5E5E5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Thank you!',
            style: AppTextStyles.font25BlackMedium,
          ),
          SizedBox(height: 2),
          Text(
            'Your transaction was successful',
            style: AppTextStyles.font20BlackRegular,
          ),
          SizedBox(height: 42),
          Column(
            children: [
              OrderInfoItem(title: 'Date', value: '01/24/2023', isSemiBoldValue: true),
              SizedBox(height: 20),
              OrderInfoItem(title: 'Time', value: '10:15 AM', isSemiBoldValue: true),
              SizedBox(height: 20),
              OrderInfoItem(title: 'To', value: 'Sam Louis', isSemiBoldValue: true),
              SizedBox(height: 6),
              Divider(
                  height: 48, indent: 15, endIndent: 15, thickness: 2, color: Color(0xFFC7C7C7)),
              OrderInfoItem(title: 'Total', value: '\$50.97', isTotalPrice: true),
            ],
          ),
          SizedBox(height: 30),
          CardInfoWidget(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                FontAwesomeIcons.barcode,
                size: 64,
              ),
              Container(
                height: 58,
                width: 113,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    style: AppTextStyles.font24BlackSemiBold.copyWith(color: Color(0xFF34A853)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ((MediaQuery.sizeOf(context).height * 0.210 - 27) / 2) - 29)
        ],
      ),
    );
  }
}
