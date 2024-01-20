import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/features/hotel-list/presentation/view/hotel_reservation_bottom.dart';
import 'package:hotel_reservation/features/hotel-list/presentation/view/hotel_reservation_button.dart';
import 'package:hotel_reservation/features/hotel-list/presentation/view/hotel_reservation_top.dart';

class HotelReservationBody extends StatelessWidget {
  const HotelReservationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HotelReservationTop(),
          8.verticalSpace,
          const HotelReservationBottom(),
          8.verticalSpace,
          const HotelReservationButton(),
        ],
      ),
    );
  }
}
