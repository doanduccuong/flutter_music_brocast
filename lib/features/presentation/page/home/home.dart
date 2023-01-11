import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/enum/enum.dart';
import 'package:flutter_base_project/features/presentation/page/home/widget/album_card.dart';
import 'package:flutter_base_project/features/presentation/page/home/widget/hip_hop_item.dart';
import 'package:flutter_base_project/widget/app_text_button.dart';
import 'package:flutter_base_project/widget/base_scafold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_bloc/home_bloc.dart';

class HomePageInitialize extends StatelessWidget {
  const HomePageInitialize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(FetchingDataEvent()),
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
      return BaseScaffold(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        isLoading: state.pageStatus == PageStatus.LOADING,
        isShowMusicBar: false,
        backgroundColor: AppColors.backgroundDark,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              _buildCategoryOption(),
              _buildGridListAlbum(),
              Text(
                "All about Viet hip-hop",
                style: AppTextStyle.white.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              _buildHipHopCategory(),
              Text(
                "Made for current user",
                style: AppTextStyle.white.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              _buildHipHopCategory(),
              Text(
                "Indie",
                style: AppTextStyle.white.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              _buildHipHopCategory(),
              Text(
                "Recent play",
                style: AppTextStyle.white.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              _buildHipHopCategory(),
            ],
          ),
        ),
        actions: const [
          Icon(FontAwesomeIcons.bell, color: AppColors.textWhite),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.clock, color: AppColors.textWhite),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.gear, color: AppColors.textWhite),
        ],
        isHaveAppBar: true,
      );
    });
  }

  void _onTap() {
    context.read<HomeBloc>().add(ChangeTabEvent());
  }

  Widget _buildHipHopCategory() {
    return SizedBox(
      height: 205,
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 10,bottom: 20),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => const HipHopItem(),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: 10,
      ),
    );
  }

  Widget _buildGridListAlbum() {
    return GridView.count(
      padding: const EdgeInsets.only(top: 25, bottom: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 420 / 132,
      crossAxisCount: 2,
      children: List.generate(6, (index) => const AlbumCard()),
    );
  }

  Row _buildCategoryOption() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        AppTextButton(
          text: "Music",
          margin: EdgeInsets.only(right: 10),
        ),
        AppTextButton(text: "Podcasts & Shows"),
      ],
    );
  }
}
