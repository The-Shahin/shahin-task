import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class DismissibleBackgroundWidget extends StatelessWidget {
  const DismissibleBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      decoration: BoxDecoration(
        color: UIColor.red,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Удалить',
            style: context.displayMediumTextTheme?.copyWith(
              color: UIColor.white,
            ),
          ),
          8.horizontalSpace,
          const Icon(
            Icons.delete,
            color: UIColor.white,
          ),
        ],
      ),
    );
  }
}
