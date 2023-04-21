import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconWidget extends StatelessWidget {
  const IconWidget(
      {super.key,
      required this.iconUrl,
      required this.colorIcon,
      required this.isActive});
  final String iconUrl;
  final Color colorIcon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: isActive
          ? BoxDecoration(
              color: colorIcon,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: colorIcon.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            )
          : null,
      child: SvgPicture.asset(
        iconUrl,
        colorFilter: ColorFilter.mode(
          isActive ? Colors.white : colorIcon,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
