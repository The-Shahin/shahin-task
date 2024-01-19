import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/hotel-list/presentation/view/hotel_reservation_body.dart';

@RoutePage()
class HotelReservationPage extends StatelessWidget {
  const HotelReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Отель',
        ),
      ),
      body: const SafeArea(
        child: HotelReservationBody(),
      ),
    );
  }
}
