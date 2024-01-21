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
                8.verticalSpace,
              ],
            ),
          ),
        ),
        8.verticalSpace,
        Container(
          decoration: BoxDecoration(
            color: UIColor.white,
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.verticalSpace,
                const ReserveInfoTile(
                  title: "Вылет из",
                  subtitle: "Санкт-Петербург",
                ),
                const ReserveInfoTile(
                  title: "Страна, город",
                  subtitle: "Египет, Хургада",
                ),
                const ReserveInfoTile(
                  title: "Даты",
                  subtitle: "19.09.2023 – 27.09.2023",
                ),
                const ReserveInfoTile(
                  title: "Кол-во ночей",
                  subtitle: "7 ночей",
                ),
                const ReserveInfoTile(
                  title: "Отель",
                  subtitle: "Steigenberger Makadi",
                ),
                const ReserveInfoTile(
                  title: "Номер",
                  subtitle: "Стандартный с видом на бассейн или сад",
                ),
                const ReserveInfoTile(
                  title: "Питание",
                  subtitle: "Все включено",
                ),
                8.verticalSpace,
              ],
            ),
          ),
        ),
        8.verticalSpace,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 16.0.h),
          decoration: BoxDecoration(
            color: UIColor.white,
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Информация о покупателе',
                style: context.displayLargeTextTheme?.copyWith(),
              ),
              16.verticalSpace,
              PrimaryTextField(
                label: 'Номер телефона',
                hintText: '+7 999 999 99 99',
                keyboardType: TextInputType.phone,
                onChanged: (v) => print(v),
              ),
              8.verticalSpace,
              PrimaryTextField(
                label: 'Почта',
                hintText: 'examplemail@mail.ru',
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) => print(v),
              ),
              16.verticalSpace,
              Text(
                'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                style: context.displaySmallTextTheme?.copyWith(
                  color: UIColor.romanSilver,
                ),
              ),
            ],
          ),
        ),
        8.verticalSpace,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 16.0.h),
          decoration: BoxDecoration(
            color: UIColor.white,
            borderRadius: BorderRadius.circular(
              15.r,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Первый турист',
                style: context.displayLargeTextTheme?.copyWith(),
              ),
              16.verticalSpace,
              PrimaryTextField(
                label: 'Номер телефона',
                hintText: '+7 999 999 99 99',
                keyboardType: TextInputType.phone,
                onChanged: (v) => print(v),
              ),
              8.verticalSpace,
              PrimaryTextField(
                label: 'Почта',
                hintText: 'examplemail@mail.ru',
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) => print(v),
              ),
              16.verticalSpace,
              Text(
                'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
                style: context.displaySmallTextTheme?.copyWith(
                  color: UIColor.romanSilver,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    this.hintText,
    required this.label,
    this.onChanged,
    this.keyboardType,
  });
  final String? hintText;
  final String label;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        label: Text(
          label,
          style: context.displayMediumTextTheme?.copyWith(
            color: UIColor.romanSilver,
          ),
        ),
        hintText: hintText,
        fillColor: UIColor.liteGray,
        alignLabelWithHint: true,
        hintStyle: context.displayMediumTextTheme?.copyWith(
          color: UIColor.romanSilver,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

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
