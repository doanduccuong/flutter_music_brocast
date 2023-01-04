import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/audio_player_handler/audio_player_bloc.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/extension/format_time.dart';
import 'package:flutter_base_project/features/domain/entites/artist_related_entity.dart';
import 'package:flutter_base_project/features/domain/entites/playlist_entity.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_bloc/home_bloc.dart';
import 'package:flutter_base_project/features/presentation/page/home/widget/musician_item.dart';
import 'package:flutter_base_project/router/route_config.dart';
import 'package:flutter_base_project/widget/play_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String defaultUrlPath =
    "https://p.scdn.co/mp3-preview/40821a698364f0bf84b15bcc71a40ef813fff0e1?cid=d8a5ed958d274c2e8ee717e6a4b0971d";

class NewsTab extends StatefulWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  late AudioPlayerApplicationBloc _audioPlayerBloc;

  @override
  void initState() {
    _audioPlayerBloc = AudioPlayerApplicationBloc(
        authPlayerRepository: context.read<UserRepository>());
    super.initState();
  }

  Future<void> _playUrlMusic(String url, bool isPlaying) async {
    if (_audioPlayerBloc.state.isPlaying) {
      await _audioPlayerBloc.audioPlayer.pause();
    } else {
      await _audioPlayerBloc.audioPlayer.play(UrlSource(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomePageState>(
      builder: (context, state) {
        final artistRelatedData = state.artistRelatedData?.artists;
        final playlistData = state.playlistData;
        final items = playlistData?.tracks?.items ?? [];
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildListMusician(artistRelatedData ?? []),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 29),
                child: BlocBuilder<AudioPlayerApplicationBloc,
                    AudioPlayerApplicationState>(
                  // buildWhen: (previous, before) {
                  //   return previous.isPlaying != before.isPlaying;
                  // },
                  builder: (context, state) {
                    print("rebuild");
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
                          itemBuilder: (context, index) {
                            return ListTile(
                              horizontalTitleGap: 23,
                              contentPadding: EdgeInsets.zero,
                              minVerticalPadding: 0,
                              minLeadingWidth: 28,
                              leading: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: PlayButton(
                                  isPlaying: state.isPlaying,
                                  callBack: () async {
                                    await _playUrlMusic(
                                      defaultUrlPath,
                                      state.isPlaying,
                                    );
                                  },
                                  urlPath: defaultUrlPath,
                                ),
                              ),
                              title: Text("This is title",
                                  style: AppTextStyle.whiteS16Bold),
                              subtitle: Text("This is subtitle",
                                  style: AppTextStyle.whiteS12),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    formatTime(state.duration - state.position),
                                    style: AppTextStyle.whiteS14,
                                  ),
                                  const SizedBox(width: 49),
                                  const Icon(
                                    FontAwesomeIcons.heart,
                                    color: AppColors.heartIconColor,
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 19),
                          itemCount: items.length,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
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
          onTap: () => Navigator.pushNamed(context, RouteConfig.musicPage),
          musicName: listArtist[index].type ?? "",
          musicianName: listArtist[index].name ?? "",
          artistImage: listArtist[index].images?[0].url ?? "",
        ),
        itemCount: listArtist.length,
      ),
    );
  }

  Widget _buildPlayList(List<Items> items) {
    return BlocBuilder<AudioPlayerApplicationBloc, AudioPlayerApplicationState>(
      buildWhen: (previous, before) {
        return previous.isPlaying != before.isPlaying;
      },
      builder: (context, state) {
        print(state.duration);
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
              itemBuilder: (context, index) {
                return ListTile(
                  horizontalTitleGap: 23,
                  contentPadding: EdgeInsets.zero,
                  minVerticalPadding: 0,
                  minLeadingWidth: 28,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: PlayButton(
                      isPlaying: state.isPlaying,
                      callBack: () async {
                        await _playUrlMusic(
                          defaultUrlPath,
                          state.isPlaying,
                        );
                      },
                      urlPath: defaultUrlPath,
                    ),
                  ),
                  title:
                      Text("This is title", style: AppTextStyle.whiteS16Bold),
                  subtitle:
                      Text("This is subtitle", style: AppTextStyle.whiteS12),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        formatTime(state.duration - state.position),
                        style: AppTextStyle.whiteS14,
                      ),
                      const SizedBox(width: 49),
                      const Icon(
                        FontAwesomeIcons.heart,
                        color: AppColors.heartIconColor,
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 19),
              itemCount: items.length,
            )
          ],
        );
      },
    );
  }
}
