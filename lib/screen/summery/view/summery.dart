import 'package:drbook/screen/appointment/controller/appointment_controller.dart';
import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/screen/appointment/view/widget/bottom_widget.dart';
import 'package:drbook/screen/appointment/view/widget/profile_card.dart';
import 'package:drbook/screen/select_package/controller/package_controller.dart';
import 'package:drbook/screen/summery/view/widget/summ_row.dart';

import 'package:drbook/style/common_widget.dart';
import 'package:flutter/material.dart';

class Summery extends StatelessWidget {
  final packageController pController;
  final AppointmentController aController;
  const Summery({super.key, required this.pController, required this.aController});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                AppBarC(tex: 'Review Summary'),
                
                ProfileCard(model: aController.doctorList),
                CommonWidget().cSizedBox,
                  Divider(
                    thickness: 1.5,
                  ),
                  CommonWidget().cSizedBox,
                  summeryCRow(sideTitle: 'Date & Hour',tilevalue: '${aController.click}| ${aController.timeupdate}|',),
                  summeryCRow(sideTitle: 'Package', tilevalue: pController.radioGValue),
                  summeryCRow(sideTitle: 'Duration', tilevalue: '${pController.durationC.substring(0,2)} minutes'),
                  summeryCRow(sideTitle: 'Booking for', tilevalue: 'Self')
          
              ],
            ),
          ),
          BottomWidget(tex: 'Confirm', check: 3)
        ],
      ),
    );
  }
}
