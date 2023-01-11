import 'package:flutter/material.dart';
import 'package:flutter_base_project/audio_player_handler/audio_player_bloc.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_scafold_common.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/extension/format_time.dart';
import 'package:flutter_base_project/features/data/data_source/local_storage.dart';
import 'package:flutter_base_project/lyrisc_const.dart';
import 'package:flutter_base_project/widget/app_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyric/lyric_ui/ui_netease.dart';
import 'package:flutter_lyric/lyrics_log.dart';
import 'package:flutter_lyric/lyrics_model_builder.dart';
import 'package:flutter_lyric/lyrics_reader_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  final _scrollController = ScrollController();
  var lyricModel = LyricsModelBuilder.create()
      .bindLyricToMain(normalLyric)
      .bindLyricToExt(transLyric)
      .getModel();
  double sliderProgress = 111658;
  int playProgress = 111658;
  double max_value = 211658;
  var lyricUI = UINetease();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldCommon(
      actions: const [Icon(Icons.settings, color: AppColors.textWhite)],
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 26,top: 60),
      isHaveAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 17,top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  AppImages.getStartBackGround,
                  height: 370,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            ListTile(
              title: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text("Bad Guy", style: AppTextStyle.whiteS26W700)),
              contentPadding: EdgeInsets.zero,
              isThreeLine: true,
              subtitle: Text("Billie Eilish", style: AppTextStyle.whiteS20),
              trailing: const Icon(
                FontAwesomeIcons.heart,
                color: AppColors.heartIconColor,
              ),
            ),
            Slider(
              value: 0,
              onChanged: (duration) {},
              activeColor: AppColors.sliderColor,
              inactiveColor: AppColors.sliderColor,
            ),
            BlocBuilder<AudioPlayerApplicationBloc, AudioPlayerApplicationState>(
              builder: (context, state) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formatTime(state.duration),
                    style: AppTextStyle.whiteS12Bold.copyWith(
                      color: AppColors.durationColor,
                    ),
                  ),
                  Text(
                    formatTime(state.position),
                    style: AppTextStyle.whiteS12Bold.copyWith(
                      color: AppColors.durationColor,
                    ),
                  )
                ],
              ),
            ),
            _buildControlMusicBar(),
            const Icon(
              FontAwesomeIcons.chevronUp,
              color: AppColors.sliderColor,
            ),
            Text(
              "Lyrics",
              style: AppTextStyle.whiteS14Bold.copyWith(
                color: AppColors.durationColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
              ),
              child: _buildLyrisContent(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLyrisContent() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lyrics",
              style: AppTextStyle.whiteS14Bold.copyWith(
                color: AppColors.durationColor,
              ),
            ),
            AppButton(
              onTap: () {},
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                "Show More ",
                style: AppTextStyle.whiteS14Bold.copyWith(
                  color: AppColors.durationColor,
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: LyricsReader(
            model: lyricModel,
            position: playProgress,
            lyricUi: lyricUI,
            emptyBuilder: () => Center(
              child: Text(
                "No lyrics",
                style: lyricUI.getOtherMainTextStyle(),
              ),
            ),
            selectLineBuilder: (progress, confirm) {
              return Row(
                children: [
                  IconButton(
                      onPressed: () {
                        LyricsLog.logD("点击事件");
                        confirm.call();
                        setState(() {
                          context.read<AudioPlayerApplicationBloc>().audioPlayer.seek(
                                Duration(milliseconds: progress),
                              );
                        });
                      },
                      icon: const Icon(Icons.play_arrow, color: Colors.green)),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.green),
                      height: 1,
                      width: double.infinity,
                    ),
                  ),
                  Text(
                    progress.toString(),
                    style: const TextStyle(color: Colors.green),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildControlMusicBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(37, 73, 37, 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.repeat, color: AppColors.sliderColor),
          Icon(FontAwesomeIcons.backward, color: AppColors.sliderColor),
          AppButton(
            buttonShape: BoxShape.circle,
            height: 72,
            width: 72,
            child: Icon(Icons.pause, color: AppColors.textWhite, size: 30),
          ),
          Icon(FontAwesomeIcons.forward, color: AppColors.sliderColor),
          Icon(FontAwesomeIcons.shuffle, color: AppColors.sliderColor),
        ],
      ),
    );
  }
}
