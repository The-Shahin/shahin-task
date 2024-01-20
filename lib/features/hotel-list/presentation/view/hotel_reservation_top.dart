import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/core/shared/widgets/chip/info_chip.dart';
import 'package:hotel_reservation/core/shared/widgets/image-carousel/carousel.dart';

class HotelReservationTop extends StatelessWidget {
  const HotelReservationTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UIColor.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.verticalSpace,
          const ImageCarousel(
            images: [
              'https://placehold.jp/1d4070/ffffff/599x599.png',
              'https://placehold.jp/5d4000/ffffff/599x599.png',
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                16.verticalSpace,
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
                16.verticalSpace,
                Text(
                  "Steigenberger Makadi",
                  style: context.displayLargeTextTheme?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                8.verticalSpace,
                Text(
                  "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                  style: context.displaySmallTextTheme?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UIColor.blue,
                  ),
                ),
                16.verticalSpace,
                Row(
                  children: [
                    Text(
                      "от 134 673 ₽",
                      style: context.displaySmallTextTheme?.copyWith(fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                    8.horizontalSpace,
                    Text(
                      "за тур с перелётом",
                      style: context.displaySmallTextTheme?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: UIColor.romanSilver,
                      ),
                    ),
                  ],
                ),
                16.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
