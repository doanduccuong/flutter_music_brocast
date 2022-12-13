import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool isHaveSuffixIcon;

  const AppTextFormField({
    Key? key,
    required this.controller,
    this.isHaveSuffixIcon = true,
    this.hintText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.whiteS16Bold,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isHaveSuffixIcon
            ? const Padding(
                padding: EdgeInsets.only(right: 29),
                child: Icon(Icons.remove_red_eye, color: AppColors.border))
            : null,
        contentPadding: const EdgeInsets.fromLTRB(27, 29, 27, 29),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.border),
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.hintTextBoldStyleS16,
      ),
    );
  }
}
