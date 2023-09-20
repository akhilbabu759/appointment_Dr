import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/booking_card.dart';

class MyBooking extends StatelessWidget {
  const MyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left:18.0,right: 18),
            child: AppBarC(tex: 'My Booking'),
          ),
          Divider(
            thickness: 1.2,
          ),
          Expanded(child: 
          ListView.builder(itemBuilder: (context, index) {
            return BookingCard();
          },))
          
        ],
      ),
    );
  }
}
