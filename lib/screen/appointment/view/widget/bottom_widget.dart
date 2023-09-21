import 'dart:developer';

import 'package:drbook/screen/appointment/controller/appointment_controller.dart';
import 'package:drbook/screen/confirmation/view/confirmation.dart';
import 'package:drbook/screen/select_package/controller/package_controller.dart';
import 'package:drbook/screen/select_package/view/select-package.dart';
import 'package:drbook/screen/summery/view/summery.dart';
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomWidget extends StatelessWidget {
  final int check;
  final String tex;
  const BottomWidget({
    super.key,
    required this.tex,
    required this.check,
  });

  @override
  Widget build(BuildContext context) {
    final contro = Get.put(AppointmentController());
    final packgC=Get.put(packageController());
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Center(
                child: GestureDetector(
              onTap: () {
                log(contro.timeupdate);
                contro.timeupdate.isNotEmpty
                    ? Get.to(check == 1
                        ? SelectPackage()
                        : check == 2
                            ? Summery(aController:contro,pController:packgC,)
                            : Confirmation())
                    : Get.snackbar(
                        'Checkout the time', 'Please select a time !!',
                        colorText: Colors.amber[200],
                        backgroundColor: AppColors().grCle);
              },
              child: Container(
                child: Center(
                    child: Text(
                  tex,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
                width: Get.width * 0.85,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                    color: AppColors().bluCle,
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            )),
            height: Get.height * 0.1,
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                border: Border.all(
                    color: Color.fromARGB(255, 202, 202, 202), width: 1.4)),
          ),
        ],
      ),
    );
  }
}
