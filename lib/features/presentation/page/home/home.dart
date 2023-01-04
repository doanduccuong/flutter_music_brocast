import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_tab/artists_tab.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_tab/news_tab.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_tab/podcast_tab.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_tab/video_tab.dart';
import 'package:flutter_base_project/widget/app_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_bloc/home_bloc.dart';

class HomePageInitialize extends StatelessWidget {
  const HomePageInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeBloc(authRepository: context.read<UserRepository>())
        ..add(FetchingDataEvent()),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomePageState>(builder: (context, state) {
      if (state.pageStatus == PageStatus.LOADING) {
        return const AppLoadingWidget();
      }
      return AppScaffoldCommon(
        isShowMusicBar: true,
        backGroundColor: AppColors.backgroundDark,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              _buildUpComingBanner(),
              PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: TabBar(
                  padding: const EdgeInsets.only(top: 40),
                  isScrollable: true,
                  indicatorColor: AppColors.buttonBGPrimary,
                  indicatorWeight: 3,
                  onTap: (int tabIndex) => _onTap(),
                  controller: _tabController,
                  labelColor: AppColors.textWhite,
                  unselectedLabelColor: AppColors.unselectedColor,
                  labelStyle: AppTextStyle.whiteS20Bold,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                        width: 3.0, color: AppColors.buttonBGPrimary),
                    insets: EdgeInsets.symmetric(horizontal: 12.0),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                  tabs: const [
                    Tab(text: "News"),
                    Tab(text: "Video"),
                    Tab(text: "Artis"),
                    Tab(text: "Podcast"),
                  ],
                ),
              ),
              SizedBox(
                height: 2000,
                child: TabBarView(
                  controller: _tabController,
                    children: const [
                  NewsTab(),
                  VideoTab(),
                  ArtistsTab(),
                  PodcastTab(),
                  ]),
              ),

            ],
          ),
        ),
        actions: const [
          Icon(FontAwesomeIcons.ellipsisVertical, color: AppColors.textWhite),
          SizedBox(width: 38),
        ],
        isHaveAppBar: true,
        leading: const Icon(Icons.search, size: 35, color: AppColors.textWhite),
      );
    });
  }

  void _onTap() {
    context.read<HomeBloc>().add(ChangeTabEvent());
  }

  Container _buildUpComingBanner() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 185, 14),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
              image: AssetImage(AppImages.topBannerBackGround))),
      child: Wrap(
        direction: Axis.vertical,
        runSpacing: 10,
        children: [
          Text(
            "New Album",
            style: AppTextStyle.whiteS10Bold,
          ),
          Text("Happier Than \nEver", style: AppTextStyle.whiteS20Bold),
          Text("Billie Eilish", style: AppTextStyle.whiteS14Bold),
        ],
      ),
    );
  }



}
