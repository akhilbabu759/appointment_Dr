import 'package:drbook/screen/appointment/view/widget/status_repeat.dart';
import 'package:drbook/screen/select_package/view/select-package.dart';
import 'package:drbook/style/app_color.dart';
import 'package:drbook/style/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/appbar.dart';
import 'widget/bottom_widget.dart';
import 'widget/listview.dart';
import 'widget/profile_card.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppBarC(
                tex: 'Book Appointment',
              ),
              ProfileCard(),
              CommonWidget().cSizedBox,
              Divider(
                thickness: 1.5,
              ),
              CommonWidget().cSizedBox,
              Row(
                children: [
                  DrStatusColumn(
                    svg: 'assets/image/people.svg',
                    num: '7,500+',
                    tex: 'Patients',
                  ),
                  SizedBox(
                    width: Get.width * 0.056,
                  ),
                  DrStatusColumn(
                    svg: 'assets/image/briefcase.svg',
                    num: '10+',
                    tex: 'Years Exp.',
                  ),
                  SizedBox(
                    width: Get.width * 0.056,
                  ),
                  DrStatusColumn(
                    svg: 'assets/image/star-1.svg',
                    num: '4.9+',
                    tex: 'Rating',
                  ),
                  SizedBox(
                    width: Get.width * 0.056,
                  ),
                  DrStatusColumn(
                    svg: 'assets/image/message.svg',
                    num: '4,956+',
                    tex: 'Review',
                  ),
                ],
              ),
              CommonWidget().cSizedBox,
              Text(
                'BOOK APPOINTMENT',
                style: TextStyle(
                    color: AppColors().grCle,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ]),
          ),
          CListview(tile: 'Day'),
          CListview(
            tile: 'Time',
          ),
          BottomWidget(tex: 'Make Appointment',check: 1,)
        ],
      ),
    );
  }
}
