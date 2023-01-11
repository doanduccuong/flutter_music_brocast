import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/features/presentation/page/sign_in_option/sign_in_option_bloc.dart';
import 'package:flutter_base_project/injection.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_base_project/setting/app_cubit.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_base_project/widget/app_text_form_field.dart';
import 'package:flutter_base_project/widget/base_scafold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInOptionPageInitialize extends StatelessWidget {
  const SignInOptionPageInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignInOptionBloc(),
      child: const SignInOptionPage(),
    );
  }
}

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
    return BlocBuilder<SignInOptionBloc, SignInOptionState>(
      buildWhen: (before, after) {
        return before.pageStatus != after.pageStatus;
      },
      builder: (context, state) {
        return BaseScaffold(
          isLoading: state.pageStatus == PageStatus.LOADING,
          padding: const EdgeInsets.fromLTRB(28, 0, 28, 74),
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
      },
    );
  }

  Row _buildSignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.appleIcon),
        const SizedBox(width: 58),
        InkWell(child: SvgPicture.asset(AppImages.googleIcon), onTap: () => getIt<AppCubit>().signIn()),
      ],
    );
  }

  AppButton _buildButtonSignIn() {
    return AppButton(
      onTap: () => Navigator.pushNamed(context, RouteConfig.homePage),
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
