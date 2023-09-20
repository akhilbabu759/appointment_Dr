
import 'package:drbook/style/app_color.dart';
import 'package:flutter/material.dart';

class summeryCRow extends StatelessWidget {
  final String sideTitle;
  final String tilevalue;
  const summeryCRow({
    super.key, required this.sideTitle, required this.tilevalue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:11.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(sideTitle,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: AppColors().grCle),),
        Text(tilevalue,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)
    
      ],),
    );
  }
}