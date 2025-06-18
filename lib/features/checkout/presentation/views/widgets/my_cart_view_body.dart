import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:checkout_payment_app/features/checkout/presentation/managers/payment_cubit/payment_cubit.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment_app/features/checkout/presentation/views/widgets/paymet_methods_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Expanded(child: Image.asset(AppImageAssets.imagesBasketImage)),
          SizedBox(height: 25),
          OrderInfoItem(title: 'Order Subtotal', value: '\$42.97'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Discount', value: '\$0'),
          SizedBox(height: 3),
          OrderInfoItem(title: 'Shipping', value: '\$8'),
          SizedBox(height: 2),
          Divider(
              height: 30,
              indent: 15,
              endIndent: 15,
              thickness: 2,
              color: Color(0xFFC7C7C7)),
          OrderInfoItem(title: 'Total', value: '\$50.97', isTotalPrice: true),
          SizedBox(height: 16),
          CustomButton(
            title: 'Complete Payment',
            onPressed: () {
              // Navigator.of(context)
              //   .push(MaterialPageRoute(builder: (context) => const PaymentDetailsView()));

              showModalBottomSheet(
                context: context,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(16),
                // ),
                builder: (context) => BlocProvider(
                  create: (context) => PaymentCubit(CheckoutRepoImpl()),
                  child: PaymetMethodsBottomSheet(),
                ),
              );
            },
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
