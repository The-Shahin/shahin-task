import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_reservation/core/router/app_router.dart';
import 'package:hotel_reservation/core/shared/assets/assets.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class HotelReservationBody extends StatelessWidget {
  const HotelReservationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg',
                    height: 258,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    color: UIColor.yellowLight.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: UIColor.yellow,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '5 Превосходно',
                        style: context.displaySmallTextTheme?.copyWith(
                          color: UIColor.yellow,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Steigenberger Makadi",
                  style: context.displayLargeTextTheme?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                  style: context.displaySmallTextTheme?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: UIColor.blue,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      "от 134 673 ₽",
                      style: context.displaySmallTextTheme?.copyWith(fontWeight: FontWeight.w500, fontSize: 30),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "за тур с перелётом",
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
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: UIColor.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Об отеле",
                  style: context.displayLargeTextTheme,
                ),
                const SizedBox(height: 16),
                Wrap(
                  children: ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"].map((e) {
                    return Container(
                      height: 30,
                      margin: const EdgeInsets.only(right: 8, top: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: UIColor.gray.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        e,
                        style: context.displayMediumTextTheme?.copyWith(
                          color: UIColor.romanSilver,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                Text(
                  "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
                  style: context.displayMediumTextTheme?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: UIColor.lotion,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      _buildTile(context, title: "Удобства", subtitle: "Самое необходимое", icon: AppAssets.icons.emojiHappy),
                      const Divider(
                        indent: 56,
                        height: 0,
                        thickness: .5,
                      ),
                      _buildTile(context, title: "Что включено", subtitle: "Самое необходимое", icon: AppAssets.icons.tickSquare),
                      const Divider(
                        indent: 56,
                        height: 0,
                        thickness: .5,
                      ),
                      _buildTile(context, title: "Что не включено", subtitle: "Самое необходимое", icon: AppAssets.icons.closeSquare),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: UIColor.white,
            ),
            child: TextButton(
              onPressed: () {
                context.router.push(const SelectNumberRoute());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "К выбору номера",
                  style: context.displayMediumTextTheme?.copyWith(
                    color: UIColor.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ListTile _buildTile(BuildContext context, {String? title, String? subtitle, String? icon}) {
    return ListTile(
      leading: SvgPicture.asset(icon ?? ""),
      title: Text(
        title ?? "",
        style: context.displayMediumTextTheme,
      ),
      subtitle: Text(
        subtitle ?? "",
        style: context.displaySmallTextTheme?.copyWith(
          color: UIColor.romanSilver,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
