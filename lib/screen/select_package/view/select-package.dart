import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/screen/appointment/view/widget/bottom_widget.dart';
import 'package:drbook/style/app_color.dart';
import 'package:drbook/style/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SelectPackage extends StatelessWidget {
  const SelectPackage({super.key});

  @override
  Widget build(BuildContext context) {
    String _selectedItem = 'Option 1'; // Initially selected item

    // List of items for the dropdown
    List<String> _items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppBarC(tex: 'Select Package'),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Text(
                  'Select Duration',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                width: Get.width, height: Get.height * 0.07,
                padding: EdgeInsets.all(16.0), // Adjust the padding as needed
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 186, 186, 186), // Adjust the border color as needed
                    width: 1.0, // Adjust the border width as needed
                  ),
                  borderRadius: BorderRadius.circular(
                      8.0), // Adjust the border radius as needed
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: AppColors().bluCle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '30 minutes',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    DropdownButton<String>(
                      elevation: 0,
                      underline: Text(''),
                      icon: Transform.rotate(
                          angle: 45 * (43.8 / 180),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: AppColors().bluCle,
                          )),
                      items: _items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {},
                      // decoration: InputDecoration(
                      //   border: InputBorder.none, // Set border to none
                      // ),
                    ),
                  ],
                ),
              ),
              CommonWidget().cSizedBox,
              Text(
                'Select Package',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              PackageList(subtile: 'Chat with Doctor',svg:'assets/image/message.svg' ,title:'Messaging' ,),
              PackageList(subtile: 'Voice call with doctor',title: 'Voice Call',svg: 'assets/image/call.svg'),
              PackageList(subtile: 'Video call with doctor',title: 'Video Call',svg: 'assets/image/video.svg'),
              PackageList(subtile: 'in Person visit with doctor',title: 'In Person',svg: 'assets/image/person.svg'),
              
            ]),
          ),
          BottomWidget(tex: 'Next',check: 2,)
        ],
      ),
    );
  }
}

class PackageList extends StatelessWidget {
  final String svg;
  final String title;
  final String subtile;
  const PackageList({
    super.key,
    required this.svg,
    required this.title,
    required this.subtile,
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
                        'Messaging',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Chat with Doctor',
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
                  value: '',
                  groupValue: '',
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
