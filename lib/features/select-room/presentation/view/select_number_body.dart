import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reservation/features/select-room/presentation/view/room_card.dart';

class SelectNumberBody extends StatelessWidget {
  const SelectNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return RoomCard(
          title: "Стандартный с видом на бассейн или сад",
          images: const [
            'https://placehold.jp/2d4070/ffffff/599x599.png',
            'https://placehold.jp/5d2000/ffffff/599x599.png',
          ],
          onPressed: () {},
        );
      },
    );
  }
}
