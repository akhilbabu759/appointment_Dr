
import 'package:drbook/screen/appointment/controller/appointment_controller.dart';
import 'package:drbook/screen/appointment/model/doctor_details.dart';
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class CListview extends StatelessWidget {
  final List<Doctor> model;
  final String tile;
  
    const CListview({
    super.key, required this.tile, required this.model,
  });

  @override
  Widget build(BuildContext context) {
    
    final List<String> date=[];
    date.addAll(model[0].availability.keys);
    
    return GetBuilder<AppointmentController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.only(top:14.0,left: 18),
        child: SizedBox(
          width: Get.width,
          height: Get.height * 0.125,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tile,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Expanded(
                  child: ListView.builder(itemCount:tile=='Day'? date.length: model[0].availability[controller.click]!.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, top: 18, bottom: 8),
                    child: GestureDetector(
                      onTap: () {
                      tile=='Day'?controller.dateUpdate(date[index]):controller.timeUpdate(model[0].availability[controller.click]![index].substring(0,8));
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: AppColors().grCle,width: 0.3),
                            color:tile=='Day'?controller.click==date[index]? AppColors().bluCle:Colors.white:AppColors().bluCle,
                            borderRadius: BorderRadius.circular(30)),
                        width:tile=='Day'? Get.width * 0.25:Get.width*0.35,
                        child:tile=='Day'? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                    color:controller.click==date[index]?  Color.fromARGB(255, 198, 198, 198):Color.fromARGB(255, 109, 109, 109),
                                    fontSize: 15),
                              ),
                              Text(
                               tile=='Day'? formatDate(date[index]):''
                                ,
                                style: TextStyle(
                                    color:controller.click==date[index]?  Colors.white:Colors.black, fontSize: 20),
                              )
                            ]):Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model[0].availability[controller.click]![index].substring(0,8),
                                style: TextStyle(
                                    color: model[0].availability[controller.click]![index].substring(0,8)==controller.timeupdate? Colors.white:Colors.black,
                                    fontSize: 25),
                              ),SizedBox(width: 10,),
                              // Text(
                              //   'PM',
                              //   style: TextStyle(
                              //       color: Colors.white, fontSize: 20),
                              // )
                            ]),
                      ),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      );
    },
    );
  }
}
String formatDate(String inputDate) {
  final DateTime date = DateTime.parse(inputDate);
  final DateFormat formatter = DateFormat('d MMM');
  return formatter.format(date);
}

