import 'package:drbook/screen/appointment/model/doctor_details.dart';
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  final List<Doctor> model;
  const ProfileCard({
    super.key, required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: Get.width * 0.15,
              backgroundImage: NetworkImage(
                // model[0].image image not found so i added default image
                 'https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?w=2000',
              ),
            ),
            Positioned(
                right: 0,
                bottom: 11,
                child: Icon(
                  Icons.verified,
                  color: AppColors().bluCle,
                  size: 32,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model[0].doctorName,
                style: TextStyle(
                    fontSize: Get.width * 0.06, fontWeight: FontWeight.w400),
              ),
              Text(
                model[0].speciality,
                style: TextStyle(
                    color: AppColors().grCle,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/image/location.svg',
                    colorFilter: ColorFilter.mode(AppColors().bluCle,
                        BlendMode.srcIn), // Replace with your SVG file path
                    //  color: AppColors().bluCle, // Change this to your desired color
                    // width: 16, // Set the width as needed
                    height: 20, // Set the height as needed
                  ),
                  Text(model[0].location,
                      style: TextStyle(
                          color: AppColors().grCle,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  SvgPicture.asset(
                    'assets/image/map.svg',
                    colorFilter:
                        ColorFilter.mode(AppColors().bluCle, BlendMode.srcIn),
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
