import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/features/data/data_source/local_storage.dart';

class PlayButton extends StatelessWidget {
  final VoidCallback? callBack;
  final bool isPlaying;
  final String urlPath;

  const PlayButton({
    Key? key,
    this.callBack,
    this.isPlaying = false,
    required this.urlPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: CircleAvatar(
        radius: 29 / 2,
        backgroundColor: AppColors.buttonPLay,
        child: isPlaying
            ? const Icon(
          Icons.pause,
          color: AppColors.playIconColor,
        )
            : const Icon(
          Icons.play_arrow_rounded,
          color: AppColors.playIconColor,
        ),
      ),
      onPressed: () {
        // LocalStorage.saveToCurrentPlayMusic(urlPath);
        callBack?.call();
      },
    );
  }
}
