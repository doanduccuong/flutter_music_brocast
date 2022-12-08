import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffoldCommon(
        backGroundColor: Colors.transparent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                  image: AssetImage(AppImages.getStartBackGround))),
          child: Column(
            children: [
              SvgPicture.asset(AppImages.spontifyLogo),
              const Text("Enjoy listening to music"),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.")
            ],
          ),
        ));
  }
}
