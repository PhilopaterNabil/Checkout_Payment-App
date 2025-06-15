import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.iconBackPressed});

  final String title;
  final void Function()? iconBackPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: GestureDetector(
          onTap: iconBackPressed,
          child: SvgPicture.asset(AppImageAssets.imagesArrow),
        ),
      ),
      title: Text(title, style: AppTextStyles.font25BlackMedium),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
