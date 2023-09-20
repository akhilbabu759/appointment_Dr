import 'package:drbook/screen/appointment/view/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
mixin PortraitModeMixin on StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return Text('') ;
  }
}
class MyApp extends StatelessWidget with PortraitModeMixin{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const GetMaterialApp(debugShowCheckedModeBanner: false,
      home: Appointment(),
    );
  }
}