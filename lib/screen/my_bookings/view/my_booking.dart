import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/screen/my_bookings/controller/all_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/booking_card.dart';

class MyBooking extends StatelessWidget {
  const MyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    final contro=Get.put(AllBookingController());
    contro.getValue();
    return Scaffold(
      body: GetBuilder<AllBookingController>(builder: (controller) {
        return contro.allbooking.isEmpty?Center(child: CircularProgressIndicator(),): Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left:18.0,right: 18),
              child: AppBarC(tex: 'My Booking'),
            ),
            Divider(
              thickness: 1.2,
            ),
            Expanded(child: 
            ListView.builder(itemCount: contro.allbooking.length,itemBuilder: (context, index) {
              return BookingCard(model:contro.allbooking[index]);
            },))
            
          ],
        );
      },
      ),
    );
  }
}
