import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/reserve/presentation/view/reserve_body.dart';

@RoutePage()
class ReservePage extends StatelessWidget {
  const ReservePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Бронирование',
        ),
      ),
      body: const SafeArea(
        child: ReserveBody(),
      ),
    );
  }
}
