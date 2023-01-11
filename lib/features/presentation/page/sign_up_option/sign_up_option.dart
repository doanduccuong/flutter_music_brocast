import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_base_project/widget/app_text_form_field.dart';
import 'package:flutter_base_project/widget/base_scafold.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpOptionPage extends StatefulWidget {
  const SignUpOptionPage({Key? key}) : super(key: key);

  @override
  State<SignUpOptionPage> createState() => _SignUpOptionPageState();
}

class _SignUpOptionPageState extends State<SignUpOptionPage> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      padding: const EdgeInsets.fromLTRB(28, 36, 28, 74),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Register", style: AppTextStyle.whiteS30W700),
          RichText(
            text: TextSpan(
              text: 'If You Need Any Support',
              style: AppTextStyle.whiteS12,
              children: [
                TextSpan(
                  text: ' Click here',
                  style: AppTextStyle.whiteS12.copyWith(
                    color: AppColors.textGreen,
                  ),
                ),
              ],
            ),
          ),
          _buildInputInformationField(),
          _createAccountButton(),
          Text("Or", style: AppTextStyle.whiteS12),
          _buildSignInOption(),
          _buildRegisterOption()
        ],
      ),
    );
  }

  AppButton _createAccountButton() {
    return AppButton(
      padding: const EdgeInsets.symmetric(horizontal: 118, vertical: 27),
      child: Text("Create Account", style: AppTextStyle.whiteS16Bold),
    );
  }

  Wrap _buildInputInformationField() {
    return Wrap(
      runSpacing: 16,
      children: [
        AppTextFormField(
          controller: _fullNameController,
          hintText: "Full Name",
          isHaveSuffixIcon: false,
        ),
        AppTextFormField(
          controller: _emailController,
          hintText: "Enter Email",
          isHaveSuffixIcon: false,
        ),
        AppTextFormField(
          controller: _passwordController,
          hintText: "Password",
        ),
      ],
    );
  }

  Row _buildSignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.appleIcon),
        const SizedBox(width: 58),
        SvgPicture.asset(AppImages.googleIcon),
      ],
    );
  }

  RichText _buildRegisterOption() {
    return RichText(
      text: TextSpan(
        text: 'Not A Member ?',
        style: AppTextStyle.whiteS14,
        children: [
          TextSpan(
            text: ' Register Now',
            style: AppTextStyle.whiteS14.copyWith(
              color: AppColors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
