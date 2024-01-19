import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/widgets/image-carousel/carousel.dart';

class SelectNumberBody extends StatelessWidget {
  const SelectNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.verticalSpace,
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              16.verticalSpace,
              const ImageCarousel(
                images: [
                  'https://placehold.jp/1d4070/ffffff/599x599.png',
                  'https://placehold.jp/5d4000/ffffff/599x599.png',
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'ada' * 9,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 32),
                ),
              ),
              16.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
