import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_reservation/core/shared/colors/ui_color.dart';
import 'package:hotel_reservation/core/shared/utils/text_theme_util.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    this.hintText,
    required this.label,
    this.onChanged,
    this.keyboardType,
    this.initalValue,
  });
  final String? hintText;
  final String label;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? initalValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initalValue,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        label: Text(
          label,
          style: context.displayMediumTextTheme?.copyWith(
            color: UIColor.romanSilver,
          ),
        ),
        hintText: hintText,
        fillColor: UIColor.liteGray,
        alignLabelWithHint: true,
        hintStyle: context.displayMediumTextTheme?.copyWith(
          color: UIColor.romanSilver,
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
