import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/core/shared/widgets/chip/info_chip.dart';
import 'package:hotel_reservation/features/reserve/presentation/state/reserve_provider.dart';
import 'package:hotel_reservation/features/reserve/presentation/state/tourist_provider.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/reserve_info_tile.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/text_field.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/tourist/add_tourist_widget.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/tourist/tourist_widget.dart';
import 'package:provider/provider.dart';

class ReserveBody extends StatelessWidget {
  const ReserveBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ReserveProvider(),
      child: Builder(builder: (context) {
        final provider = context.watch<ReserveProvider>();
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
                padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
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
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
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
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
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
            ...List.generate(
              provider.tourists.length,
              (index) => Column(
                children: [
                  TouristWidget(
                    key: ValueKey(index.toString()),
                    title: index == 0
                        ? 'Первый турист '
                        : index == 1
                            ? 'Второй турист '
                            : 'Турист ${index + 1}',
                    dismissible: index > 0,
                    touristInfo: provider.tourists[index],
                    onChanged: (v) => provider.tourists[index] = v,
                    onRemove: (v) => provider.removeTourist(v),
                  ),
                ],
              ),
            ),
            AddTouristWidget(
              onTap: () => provider.addTourist(
                TouristInfo(index: provider.tourists.length),
              ),
            ),
            50.verticalSpace,
          ],
        );
      }),
    );
  }
}
