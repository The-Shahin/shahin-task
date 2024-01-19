import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/widgets/image-carousel/state.dart';
import 'package:provider/provider.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
    required this.images,
    this.height = 257,
  });
  final List<String> images;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ImageCarouselProvider(),
      child: Builder(builder: (context) {
        ImageCarouselProvider provider = context.watch<ImageCarouselProvider>();
        return SizedBox(
          height: height.h,
          child: Stack(
            children: [
              PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollBehavior: const MaterialScrollBehavior(),
                  padEnds: false,
                  onPageChanged: (currentIndex) => provider.currentIndex = currentIndex,
                  allowImplicitScrolling: true,
                  itemBuilder: (c, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: height.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  itemCount: images.length),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: SizedBox(
                    height: 17.h,
                    width: 16.w + images.length * 12.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                      ),
                      decoration: BoxDecoration(
                        color: UIColor.white,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          images.length,
                          (index) => CircleAvatar(
                            backgroundColor: UIColor.black.withOpacity(provider.currentIndex == index ? 1 : 0.2),
                            radius: 4.r,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
