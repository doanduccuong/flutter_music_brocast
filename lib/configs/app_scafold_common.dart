import 'package:flutter/material.dart';
import 'package:flutter_base_project/audio_player_handler/audio_player_bloc.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/extension/format_time.dart';
import 'package:flutter_base_project/features/presentation/page/music_page/music_page.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppScaffoldCommon extends StatelessWidget {
  final Color backGroundColor;
  final Widget body;
  final EdgeInsetsGeometry? padding;
  final ImageProvider<Object>? decorationImage;
  final bool isHaveAppBar;
  final double? toolbarHeight;
  final EdgeInsetsGeometry? leadingMargin;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? bottomNavigationBar;
  final bool isShowMusicBar;

  const AppScaffoldCommon({
    Key? key,
    this.padding,
    this.leadingMargin,
    this.isShowMusicBar = false,
    this.actions,
    this.leading,
    this.backGroundColor = AppColors.backgroundDark,
    this.isHaveAppBar = false,
    this.bottomNavigationBar,
    this.toolbarHeight,
    this.decorationImage,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backGroundColor,
        image: decorationImage != null
            ? DecorationImage(
                image: decorationImage!,
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              )
            : null,
      ),
      child: Scaffold(
        bottomNavigationBar: isShowMusicBar ? _buildBottomMusicBar() : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: isHaveAppBar
            ? AppBar(
                shadowColor: Colors.transparent,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                toolbarHeight: 33,
                leadingWidth: 32,
                actions: actions,
                title: SvgPicture.asset(AppImages.spontifyLogo, height: 33, width: 108),
                leading: leading ??
                    AppButton(
                      width: 32,
                      margin: leadingMargin,
                      height: 32,
                      onTap: () => Navigator.pop(context),
                      backgroundColor: AppColors.buttonBack,
                      buttonShape: BoxShape.circle,
                      child: const Icon(
                        FontAwesomeIcons.chevronLeft,
                        color: AppColors.backIconColor,
                        size: 14,
                      ),
                    ),
              )
            : null,
        body: body,
      ),
    );
  }

  Widget _buildBottomMusicBar() {
    return BlocBuilder<AudioPlayerApplicationBloc, AudioPlayerApplicationState>(builder: (context, state) {
      return Container(
        padding: const EdgeInsets.fromLTRB(31, 0, 41, 20),
        decoration: const BoxDecoration(color: AppColors.kWhiteBackgroundColor),
        child: InkWell(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                onTap: () => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) =>  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: MusicPage(),
                  ),
                ),
                minLeadingWidth: 0,
                minVerticalPadding: 14,
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(backgroundColor: Colors.red, radius: 21),
                title: Text(
                  "Bad Guy",
                  style: AppTextStyle.whiteS26W700.copyWith(color: AppColors.textWhite2, fontSize: 16),
                ),
                subtitle: Text(
                  "Billie Eilish",
                  style: AppTextStyle.greyPrimaryS18W400.copyWith(color: AppColors.textWhite3, fontSize: 12),
                ),
                trailing: const Icon(FontAwesomeIcons.heart, color: AppColors.heartIconColor),
              ),
              Slider(
                value: 0,
                onChanged: (duration) {},
                activeColor: AppColors.sliderColor,
                inactiveColor: AppColors.sliderColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formatTime(state.position),
                    style: AppTextStyle.whiteS14.copyWith(fontSize: 12),
                  ),
                  Text(
                    formatTime(state.duration - state.position),
                    style: AppTextStyle.whiteS14.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
