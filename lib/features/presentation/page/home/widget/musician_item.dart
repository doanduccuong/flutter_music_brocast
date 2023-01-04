import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';
import 'package:flutter_base_project/features/presentation/page/home/home_tab/news_tab.dart';
import 'package:flutter_base_project/widget/play_button.dart';

class MusicianItem extends StatelessWidget {
  final String musicName;
  final String musicianName;
  final String artistImage;
  final Function()? onTap;
  const MusicianItem({
    Key? key,
    required this.musicName,
    required this.musicianName,
    required this.artistImage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9),
                constraints: const BoxConstraints(maxHeight: 185, maxWidth: 147),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image:  DecorationImage(
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    image: NetworkImage(artistImage),
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 11,
                child: PlayButton(urlPath: defaultUrlPath)
              )
            ],
          ),
          Text(musicName, style: AppTextStyle.whiteS16Bold),
          Text(musicianName, style: AppTextStyle.whiteS16),
        ],
      ),
    );
  }
}
