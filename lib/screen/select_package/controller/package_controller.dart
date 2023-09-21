import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:drbook/api/api.dart';
import 'package:drbook/screen/select_package/model/package_model.dart';
import 'package:get/get.dart';
class packageController extends GetxController{
  AppointmentOptions packageData=AppointmentOptions(duration: [], package: []);
   String durationC='';
   String radioGValue='';


Future<AppointmentOptions> fetchAppointmentOptions() async {
  try {
    final response = await Dio().get(ApiUrl().selectPackageModeOfCommunication); 
    log(response.statusCode.toString(),name: 'njan');// Replace with your API endpoint
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      return AppointmentOptions.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
void getDataFromApi()async{
  await fetchAppointmentOptions().then((value) {
    packageData=value;
  });
  update();
  durationC=packageData.duration[0];
  update();
  radioGValue=packageData.package[0];
  log(packageData.toString());
}
void durationUpdate(String value){
  durationC=value;
  update();
}
void packageUpdate(String valu){
  radioGValue=valu;
  update();
}
}