import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class AddTouristWidget extends StatelessWidget {
  const AddTouristWidget({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 12.0.h,
        ),
        decoration: BoxDecoration(
          color: UIColor.white,
          borderRadius: BorderRadius.circular(
            12.r,
          ),
        ),
        child: Row(
          children: [
            Text(
              'Добавить туриста',
              style: context.displayLargeTextTheme?.copyWith(),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: UIColor.blue,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: const Icon(
                Icons.add,
                color: UIColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
