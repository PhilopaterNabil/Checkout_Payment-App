import 'package:checkout_payment_app/core/utils/app_image_assets.dart';
import 'package:checkout_payment_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title, this.iconBackPressed, this.isBack = true});

  final String? title;
  final void Function()? iconBackPressed;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBack
          ? Center(
              child: GestureDetector(
                onTap: iconBackPressed,
                child: SvgPicture.asset(AppImageAssets.imagesArrow),
              ),
            )
          : null,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: title != null ? Text(title!, style: AppTextStyles.font25BlackMedium) : null,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
