import 'package:drbook/screen/appointment/view/widget/appbar.dart';
import 'package:drbook/screen/appointment/view/widget/bottom_widget.dart';
import 'package:drbook/screen/select_package/view/widget/package_list.dart';
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

