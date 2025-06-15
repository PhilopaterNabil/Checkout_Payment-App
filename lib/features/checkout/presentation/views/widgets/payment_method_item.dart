import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key, required this.imagePath, this.isSelected = false});

  final String imagePath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: 62,
      width: 103,
      margin: EdgeInsets.only(left: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: isSelected
              ? BorderSide(color: Color(0xFF34A853), width: 1.5)
              : BorderSide(color: Colors.black.withOpacity(0.5), width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: isSelected
            ? [
                BoxShadow(color: Color(0xFF34A853), blurRadius: 4),
              ]
            : null,
      ),
      child: Center(child: SvgPicture.asset(imagePath)),
    );
  }
}
