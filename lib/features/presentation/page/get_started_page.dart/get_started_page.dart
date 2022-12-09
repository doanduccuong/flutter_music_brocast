import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/route_config/route_config.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffoldCommon(
      padding: 50,
      backGroundColor: Colors.transparent,
      decorationImage: const AssetImage(AppImages.getStartBackGround),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppImages.spontifyLogo),
          const Spacer(),
          Text("Enjoy listening to music", style: AppTextStyle.whiteS25W700),
          const SizedBox(height: 21),
          Text(
            "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Sagittis enim\n purus sed phasellus. Cursus ornare id\n scelerisque aliquam.",
            style: AppTextStyle.whiteS18.copyWith(color: AppColors.textGrey),
            textAlign: TextAlign.center,
          ),
          AppButton(
            onTap: ()=>_getStartedButton(context),
            backgroundColor: AppColors.buttonBGPrimary,
            padding:
                const EdgeInsets.symmetric(vertical: 31, horizontal: 106),
            margin: const EdgeInsets.fromLTRB(0, 37, 0, 69),
            child: Text("Get Started", style: AppTextStyle.white1S25W700),
          )
        ],
      ),
    );
  }
  void _getStartedButton(BuildContext context){
    Navigator.pushNamed(context, RouteConfig.chooseMode);
  }
}
