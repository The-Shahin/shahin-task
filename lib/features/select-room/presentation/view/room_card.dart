import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/core/shared/widgets/buttons/primary_button.dart';
import 'package:hotel_reservation/core/shared/widgets/chip/info_chip.dart';
import 'package:hotel_reservation/core/shared/widgets/image-carousel/carousel.dart';

class RoomCard extends StatelessWidget {
  final String? title;
  final List<String>? images;
  final VoidCallback onPressed;
  const RoomCard({super.key, this.title, this.images, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.verticalSpace,
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              16.verticalSpace,
              ImageCarousel(
                images: images ?? [],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    8.verticalSpace,
                    Text(
                      title ?? "",
                      style: context.displayLargeTextTheme,
                    ),
                    Wrap(
                      children: ["Все включено", "Кондиционер"].map((e) {
                        return InfoChip(
                          title: e,
                          backgroundColor: UIColor.gray,
                          textColor: UIColor.romanSilver,
                        );
                      }).toList(),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: const InfoChip(
                        title: "Подробнее о номере",
                        backgroundColor: UIColor.blue,
                        textColor: UIColor.blue,
                        trailling: Icon(
                          Icons.arrow_forward_ios,
                          color: UIColor.blue,
                          size: 16,
                        ),
                      ),
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Text(
                          "186 600 ₽",
                          style: context.displaySmallTextTheme?.copyWith(fontWeight: FontWeight.w500, fontSize: 30),
                        ),
                        8.horizontalSpace,
                        Text(
                          "за 7 ночей с перелётом",
                          style: context.displaySmallTextTheme?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: UIColor.romanSilver,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: PrimaryButton(onPressed: onPressed, title: "Выбрать номер"),
              ),
              16.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
