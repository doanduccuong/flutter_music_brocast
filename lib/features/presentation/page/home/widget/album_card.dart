import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_color.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';

class AlbumCard extends StatelessWidget {
  final String? image;

  const AlbumCard({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.albumCardBackGroundColor),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image ?? AppImages.haNhiImage),
              ),
            ),
          ),
          Text(
            "Liked Songs ",
            style: AppTextStyle.white.copyWith(fontSize: 15),
            maxLines: 2,
          ),
        ],
      ),
    );
    // return ListTile(
    //   tileColor: AppColors.albumCardBackGroundColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10)
    //   ),
    //   horizontalTitleGap: 10,
    //   minVerticalPadding: 0,
    //   minLeadingWidth: 10,
    //   contentPadding: EdgeInsets.zero,
    //   leading: Container(
    //     height: 50,
    //     width: 50,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         fit: BoxFit.fill,
    //         image: AssetImage(image ?? AppImages.haNhiImage),
    //       ),
    //     ),
    //   ),
    //   title: Text(
    //     "Liked Songs ",
    //     style: AppTextStyle.white.copyWith(fontSize: 15),
    //     maxLines: 2,
    //   ),
    // );
  }
}
