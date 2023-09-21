import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/screen/appointment/view/widget/bottom_widget.dart';
import 'package:drbook/screen/appointment/view/widget/profile_card.dart';
import 'package:drbook/screen/summery/view/widget/summ_row.dart';
import 'package:drbook/style/app_color.dart';
import 'package:drbook/style/common_widget.dart';
import 'package:flutter/material.dart';

class Summery extends StatelessWidget {
  const Summery({super.key});

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
                
                ProfileCard(model: []),
                CommonWidget().cSizedBox,
                  Divider(
                    thickness: 1.5,
                  ),
                  CommonWidget().cSizedBox,
                  summeryCRow(sideTitle: 'Date & Hour',tilevalue: 'August 24,2023| 10:00 AM',),
                  summeryCRow(sideTitle: 'Package', tilevalue: 'Messaging'),
                  summeryCRow(sideTitle: 'Duration', tilevalue: '30 minutes'),
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
