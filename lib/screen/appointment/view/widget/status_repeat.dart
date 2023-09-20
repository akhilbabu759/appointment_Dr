import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrStatusColumn extends StatelessWidget {
  final String svg;
  final String num;
  final String tex;
  const DrStatusColumn({
    super.key,
    required this.svg,
    required this.num,
    required this.tex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AppColors().traBlue,
          radius: 33,
          child: SvgPicture.asset(
            svg,
            colorFilter: ColorFilter.mode(AppColors().bluCle, BlendMode.srcIn),
            height: 28,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 3),
          child: Text(
            num,
            style: TextStyle(
                color: AppColors().bluCle,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          tex,
          style: TextStyle(
              color: AppColors().grCle,
              fontWeight: FontWeight.w400,
              fontSize: 14),
        )
      ],
    );
  }
}
