import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_base_project/widget/app_text_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInOptionPage extends StatefulWidget {
  const SignInOptionPage({Key? key}) : super(key: key);

  @override
  State<SignInOptionPage> createState() => _SignInOptionPageState();
}

class _SignInOptionPageState extends State<SignInOptionPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  void dispose() {
    _userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldCommon(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 74),
      isHaveAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Sign In", style: AppTextStyle.whiteS30W700),
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
          AppTextFormField(
            controller: _userNameController,
            hintText: "Enter Username Or Email",
            isHaveSuffixIcon: false,
          ),
          AppTextFormField(
            controller: _passwordController,
            hintText: "Password",
          ),
          Text(
            "Recovery password",
            style: AppTextStyle.greyS14Bold.copyWith(
              color: AppColors.greySecondary,
            ),
          ),
          _buildButtonSignIn(),
          Text("Or", style: AppTextStyle.whiteS12),
          _buildSignInOption(),
          _buildRegisterOption()
        ],
      ),
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
  AppButton _buildButtonSignIn(){
    return AppButton(
      onTap: ()=> Navigator.pushNamed(context, RouteConfig.homePage),
      padding: const EdgeInsets.symmetric(horizontal: 118, vertical: 27),
      child: Text("Sign In", style: AppTextStyle.whiteS16Bold),
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
