import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class InfoChip extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final Widget? trailling;
  final Color? backgroundColor;
  final Color? textColor;
  const InfoChip({super.key, this.title, this.leading, this.trailling, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(right: 8, top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor?.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) leading ?? const SizedBox.shrink(),
          4.horizontalSpace,
          Text(
            title ?? "",
            style: context.displayMediumTextTheme?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          4.horizontalSpace,
          if (trailling != null) trailling ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
