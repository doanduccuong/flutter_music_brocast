import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_configs.dart';
import 'package:flutter_base_project/features/presentation/page/splash_page/splash_page_bloc/splash_page_cubit.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../configs/app_images.dart';
import '../../../domain/repositories/user_repository.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SplashPageCubit(
          authRepository: RepositoryProvider.of<UserRepository>(context),
        );
      },
      child: const SplashChildPage(),
    );
  }
}

class SplashChildPage extends StatefulWidget {
  const SplashChildPage({Key? key}) : super(key: key);

  @override
  State<SplashChildPage> createState() => _SplashChildPageState();
}

class _SplashChildPageState extends State<SplashChildPage> {
  @override
  void initState() {
    super.initState();
    startAnimation();
  }
  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    await Future.delayed(const Duration(milliseconds: 500));
    AppConfigs.navigatorKey.currentState?.pushNamed(RouteConfig.getStartedPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 97),
        child: SvgPicture.asset(
          AppImages.spontifyLogo,
          height: 59,
          alignment: Alignment.center,
          width: 196,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
