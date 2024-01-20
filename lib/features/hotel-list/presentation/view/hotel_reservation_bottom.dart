import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_reservation/core/shared/assets/assets.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/core/shared/widgets/chip/info_chip.dart';

class HotelReservationBottom extends StatelessWidget {
  const HotelReservationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              return InfoChip(
                title: e,
                textColor: UIColor.romanSilver,
                backgroundColor: UIColor.gray,
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
