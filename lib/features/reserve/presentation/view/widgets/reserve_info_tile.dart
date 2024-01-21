import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class ReserveInfoTile extends StatelessWidget {
  const ReserveInfoTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: context.displayMediumTextTheme?.copyWith(
                color: UIColor.romanSilver,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              subtitle,
              style: context.displayMediumTextTheme,
            ),
          ),
        ],
      ),
    );
  }
}
