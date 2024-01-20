import 'package:flutter/material.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? title;
  const PrimaryButton({super.key, required this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title ?? "",
          style: context.displayMediumTextTheme?.copyWith(
            color: UIColor.white,
          ),
        ),
      ),
    );
  }
}
