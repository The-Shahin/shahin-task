import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/select-room/presentation/view/select_number_body.dart';

@RoutePage()
class SelectNumberPage extends StatelessWidget {
  const SelectNumberPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Выбор номера',
        ),
      ),
      body: const SafeArea(
        child: SelectNumberBody(),
      ),
    );
  }
}
