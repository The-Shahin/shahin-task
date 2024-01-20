import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/router/app_router.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/widgets/buttons/primary_button.dart';

class HotelReservationButton extends StatelessWidget {
  const HotelReservationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: UIColor.white,
      ),
      child: PrimaryButton(
        onPressed: () {
          context.router.push(const SelectNumberRoute());
        },
        title: "К выбору номера",
      ),
    );
  }
}
