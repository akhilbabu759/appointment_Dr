import 'package:drbook/screen/appointment/controller/appointment_controller.dart';
import 'package:drbook/screen/appointment/view/widget/status_repeat.dart';

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
   final conr= Get.put(AppointmentController());
   conr.getDetails();
    return Scaffold(
      body: GetBuilder<AppointmentController>(builder: (controller) {
        return controller.doctorList.isEmpty?Center(child:CircularProgressIndicator(),): Column(
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
                ProfileCard(model:conr.doctorList),
                CommonWidget().cSizedBox,
                Divider(
                  thickness: 1.5,
                ),
                CommonWidget().cSizedBox,
                Row(
                  children: [
                    DrStatusColumn(
                      svg: 'assets/image/people.svg',
                      num: '${conr.doctorList[0].patientsServed}+',
                      tex: 'Patients',
                    ),
                    SizedBox(
                      width: Get.width * 0.056,
                    ),
                    DrStatusColumn(
                      svg: 'assets/image/briefcase.svg',
                      num: '${conr.doctorList[0].yearsOfExperience}+',
                      tex: 'Years Exp.',
                    ),
                    SizedBox(
                      width: Get.width * 0.056,
                    ),
                    DrStatusColumn(
                      svg: 'assets/image/star-1.svg',
                      num: '${conr.doctorList[0].rating}+',
                      tex: 'Rating',
                    ),
                    SizedBox(
                      width: Get.width * 0.056,
                    ),
                    DrStatusColumn(
                      svg: 'assets/image/message.svg',
                      num: '${conr.doctorList[0].numberOfReviews}+',
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
            CListview(tile: 'Day',model:conr.doctorList),
            CListview(model: conr.doctorList,
              tile: 'Time',
            ),
            BottomWidget(tex: 'Make Appointment',check: 1,)
          ],
        );
      },
      ),
    );
  }
}
