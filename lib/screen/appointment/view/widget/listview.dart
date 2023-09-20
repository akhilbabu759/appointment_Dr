
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CListview extends StatelessWidget {
  final String tile;
  
    const CListview({
    super.key, required this.tile,
  });

  @override
  Widget build(BuildContext context) {
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
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 8.0, top: 18, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().bluCle,
                        borderRadius: BorderRadius.circular(30)),
                    width:tile=='Day'? Get.width * 0.25:Get.width*0.35,
                    child:tile=='Day'? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                                color: Color.fromARGB(255, 198, 198, 198),
                                fontSize: 15),
                          ),
                          Text(
                            '4 Oct',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          )
                        ]):Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '7:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25),
                          ),SizedBox(width: 10,),
                          Text(
                            'PM',
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          )
                        ]),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
