import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Jonny Wilson',
                style: TextStyle(
                    fontSize: Get.width * 0.06,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Dentist',
                style: TextStyle(
                    color: AppColors().grCle,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),SizedBox(height: 14,),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,color: AppColors().bluCle,
                    size: 16,
                  ),
                  Text('NEW York, United STAts',style: TextStyle(
                    color: AppColors().grCle,
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
                  Icon(
                    Icons.map_outlined,
                    color: AppColors().bluCle,size: 16,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
