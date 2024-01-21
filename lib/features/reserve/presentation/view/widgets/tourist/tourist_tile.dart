import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';
import 'package:hotel_reservation/features/reserve/presentation/state/tourist_provider.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/widgets/text_field.dart';

class TouristTile extends StatelessWidget {
  const TouristTile({
    super.key,
    required this.provider,
    required this.title,
    this.onChanged,
    required this.touristInfo,
  });
  final Function(TouristInfo)? onChanged;
  final TouristInfo touristInfo;
  final TouristProvider provider;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.w,
            vertical: 2.0.h,
          ),
          decoration: BoxDecoration(
            color: UIColor.white,
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  onExpansionChanged: (value) => provider.toggleTileCollapsed(),
                  trailing: Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: UIColor.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Icon(
                      provider.tileCollapsed ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: UIColor.blue,
                    ),
                  ),
                  collapsedIconColor: UIColor.blue,
                  title: Text(
                    title,
                    style: context.displayLargeTextTheme?.copyWith(),
                  ),
                  children: [
                    const Row(
                      children: [
                        Spacer(),
                      ],
                    ),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Имя',
                        hintText: 'Иван',
                        initalValue: provider.firstName,
                        keyboardType: TextInputType.name,
                        onChanged: (v) {
                          provider.firstName = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Фамилия',
                        hintText: 'Иванов',
                        initalValue: provider.lastName,
                        keyboardType: TextInputType.name,
                        onChanged: (v) {
                          provider.lastName = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Дата рождения',
                        initalValue: provider.birthdate,
                        keyboardType: TextInputType.datetime,
                        onChanged: (v) {
                          provider.birthdate = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Гражданство',
                        initalValue: provider.nationality,
                        keyboardType: TextInputType.datetime,
                        onChanged: (v) {
                          provider.nationality = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Номер загранпаспорта',
                        initalValue: provider.passportNumber,
                        keyboardType: TextInputType.datetime,
                        onChanged: (v) {
                          provider.passportNumber = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                    PrimaryTextField(
                        label: 'Срок действия загранпаспорта',
                        initalValue: provider.passportExpiryDate,
                        keyboardType: TextInputType.datetime,
                        onChanged: (v) {
                          provider.passportExpiryDate = v;
                          onChanged?.call(provider.touristInfo!);
                        }),
                    16.verticalSpace,
                  ],
                ),
              )
            ],
          ),
        ),
        8.verticalSpace,
      ],
    );
  }
}
