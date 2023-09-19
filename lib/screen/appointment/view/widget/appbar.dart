
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarC extends StatelessWidget {
  final String tex;
  const AppBarC({
    super.key, required this.tex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( top: 37,bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: Get.size.height * 0.06,
              width: Get.size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.black12, width: 1.7)),
              child: Icon(Icons.arrow_back)),
          Text(
            tex,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Get.size.width * 0.053),
          ),
          SizedBox(
            width: Get.width * 0.1,
          )
        ],
      ),
    );
  }
}
