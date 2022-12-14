import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffoldCommon(
      leadingMargin: const EdgeInsets.only(left: 30),
      isHaveAppBar: true,
      decorationImage: const AssetImage(AppImages.signInBackGround),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 111),
          SvgPicture.asset(AppImages.spontifyLogo, height: 71, width: 235),
          Padding(
            padding: const EdgeInsets.only(top: 55, bottom: 21),
            child: Text(
              "Enjoy Listening To Music",
              style: AppTextStyle.whiteS26W700,
            ),
          ),
          SizedBox(
            width: 306,
            child: Text(
              "Spotify is a proprietary Swedish audio streaming and media services provider ",
              style: AppTextStyle.greyPrimaryS18W400,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          _buildSignInOption(context)
        ],
      ),
    );
  }

  Row _buildSignInOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          onTap: () =>Navigator.pushNamed(context, RouteConfig.signUpOptionPage),
          margin: const EdgeInsets.only(right: 88),
          backgroundColor: AppColors.buttonBGPrimary,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 36),
          child: Text("Register", style: AppTextStyle.whiteS20W700),
        ),
        TextButton(
          onPressed: () =>Navigator.pushNamed(context, RouteConfig.signInOptionPage),
          child: Text("Sign in", style: AppTextStyle.whiteS20W700),
          // backgroundColor: AppColors.buttonBGPrimary,
        )
      ],
    );
  }
}
