import 'package:flutter/material.dart';
import 'package:flutter_base_project/configs/app_images.dart';
import 'package:flutter_base_project/configs/app_text_style.dart';

class HipHopItem extends StatelessWidget {
  const HipHopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              AppImages.haNhiImage,
              height: 140,
              width: 150,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              "LowG, Hoang Thuy",
              style: AppTextStyle.white.copyWith(fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              "Linh, Den, Da LAB, tlinh",
              style: AppTextStyle.white.copyWith(fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
