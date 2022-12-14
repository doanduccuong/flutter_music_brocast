import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/core/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_bloc/home_bloc.dart';
import 'package:flutter_base_project/features/presentation/page/home/widget/musician_item.dart';
import 'package:flutter_base_project/widget/play_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsTab extends StatefulWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  final audioPlayer = AudioPlayer();
  PlayerState audioPlayerState = PlayerState.paused;
  @override
  void initState() {
    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        audioPlayerState = state;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.release();
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playUrlMusic(String url) async {
    if(audioPlayerState== PlayerState.playing){
      await audioPlayer.pause();
    }else{
      await audioPlayer.play(UrlSource(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomePageState>(
      builder: (context, state) {
        final data = state.artistRelatedData?.artists;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildListMusician(data ?? []),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 29),
              child: _buildPlayList(),
            )
          ],
        );
      },
    );
  }

  Container _buildListMusician(List<Artists> listArtist) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 300),
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 14),
        padding: const EdgeInsets.only(top: 28, bottom: 37, left: 28),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MusicianItem(
          musicName: listArtist[index].type ?? "",
          musicianName: listArtist[index].name ?? "",
          artistImage: listArtist[index].images?[0].url ?? "",
        ),
        itemCount: listArtist.length,
      ),
    );
  }

  Widget _buildPlayList() {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Playlist", style: AppTextStyle.whiteS26W700),
            Text("See More", style: AppTextStyle.whiteS12)
          ],
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) => ListTile(
            horizontalTitleGap: 23,
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            minLeadingWidth: 28,
            leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: PlayButton(
                  isPlaying: audioPlayerState == PlayerState.playing,
                  onPress: () async => await _playUrlMusic(
                      "https://p.scdn.co/mp3-preview/40821a698364f0bf84b15bcc71a40ef813fff0e1?cid=d8a5ed958d274c2e8ee717e6a4b0971d"),
                )),
            title: Text("This is title", style: AppTextStyle.whiteS16Bold),
            subtitle: Text("This is subtitle", style: AppTextStyle.whiteS12),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Time play", style: AppTextStyle.whiteS14),
                const SizedBox(width: 49),
                const Icon(FontAwesomeIcons.heart,
                    color: AppColors.heartIconColor),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 19),
          itemCount: 20,
        )
      ],
    );
  }
}
