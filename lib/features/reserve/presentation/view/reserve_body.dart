import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/core/shared/widgets/chip/info_chip.dart';

class ReserveBody extends StatelessWidget {
  const ReserveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        8.verticalSpace,
        Container(
          height: 140.h,
          decoration: BoxDecoration(
            color: UIColor.white,
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 16.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InfoChip(
                  backgroundColor: UIColor.yellowLight,
                  title: "5 Превосходно",
                  textColor: UIColor.yellow,
                  leading: Icon(
                    Icons.star,
                    color: UIColor.yellow,
                    size: 20,
                  ),
                ),
                8.verticalSpace,
                Text(
                  "Steigenberger Makadi",
                  style: context.displayLargeTextTheme?.copyWith(),
                ),
                8.verticalSpace,
                Text(
                  "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                  style: context.displaySmallTextTheme?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UIColor.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
