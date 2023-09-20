
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:18.0,right: 18,bottom: 18),
      child: Container(
        width: Get.width,
        height: Get.height * 0.38,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 0.4, color: Color.fromARGB(255, 182, 182, 182)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 0.1,
                  color: Color.fromARGB(77, 0, 0, 0),
                  spreadRadius: 0.01),
              BoxShadow(blurRadius: 2, color: Colors.white)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aug 25, 2023 - 10:00 AM',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.3,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: Get.height * 0.13,
                      width: Get.height * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg',
                              ),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dr. Jenny William'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text(
                              'G8502 Preston Rd. Inglewood',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.admin_panel_settings),
                            Text(
                              'Booking ID:',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '#DR452SA54',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors().bluCle),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1.3,
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors().traBlue,
                          borderRadius: BorderRadius.circular(30)),
                      width: Get.width * 0.38,
                      height: Get.height * 0.06,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cancel',
                              style: TextStyle(
                                  color: AppColors().bluCle,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors().bluCle,
                          borderRadius: BorderRadius.circular(30)),
                      width: Get.width * 0.38,
                      height: Get.height * 0.06,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reschedule',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ]),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
