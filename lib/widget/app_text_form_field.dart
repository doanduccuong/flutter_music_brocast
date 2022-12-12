import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;

  const AppTextFormField({
    Key? key,
    required this.controller,
    this.hintText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.whiteS16Bold,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(27, 29, 27, 29),
        suffix: const Icon(Icons.remove_red_eye,color: Colors.red),
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
