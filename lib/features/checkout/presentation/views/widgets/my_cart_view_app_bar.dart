import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCartViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCartViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: SvgPicture.asset(AppImageAssets.imagesArrow),
      ),
      title: Text('My Cart', style: AppTextStyles.font25BlackMedium),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
