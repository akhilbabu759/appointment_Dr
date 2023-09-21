import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PackageList extends StatelessWidget {
  final String  radioGvalue;
  final String svg;
  final String title;
  final String subtile;
  const PackageList({
    super.key,
    required this.svg,
    required this.title,
    required this.subtile, required this.radioGvalue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: Get.height * 0.1,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 0.1,
                color: Color.fromARGB(77, 0, 0, 0),
                spreadRadius: 0.01),
            BoxShadow(blurRadius: 2, color: Colors.white)
          ],
          borderRadius: BorderRadius.all(Radius.circular(14)),
          // color: Colors.amber
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors().traBlue,
                    radius: 30,
                    child: SvgPicture.asset(
                      svg,
                      colorFilter:
                          ColorFilter.mode(AppColors().bluCle, BlendMode.srcIn),
                      height: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        subtile,
                        style: TextStyle(
                            color: AppColors().grCle,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 1.8,
                child: Radio(
                  value: title,
                  groupValue: radioGvalue,
                  onChanged: (value) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
