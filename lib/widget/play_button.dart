import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';

class PlayButton extends StatelessWidget {
  final Function()? onPress;
  final bool isPlaying;

  const PlayButton({
    Key? key,
    this.onPress,
    this.isPlaying = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon:  CircleAvatar(
          radius: 29 / 2,
          backgroundColor: AppColors.buttonPLay,
          child: isPlaying
              ? const Icon(
                  Icons.add,
                  color: AppColors.playIconColor,
                )
              : const Icon(
                  Icons.play_arrow_rounded,
                  color: AppColors.playIconColor,
                ),
        ),
        onPressed: onPress);
  }
}
