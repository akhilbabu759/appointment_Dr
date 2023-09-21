import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:drbook/api/api.dart';
import 'package:drbook/screen/appointment/model/doctor_details.dart';
import 'package:get/get.dart';

class AppointmentController extends GetxController{
   final Dio _dio = Dio();
   List<Doctor> doctorList=[];
   String click='';
   String timeupdate='';

  Future<List<Doctor>> fetchDoctors() async {
    try {
      final response = await _dio.get(ApiUrl().doctorDetails); 
      log(response.statusCode.toString());// Replace with your API endpoint
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        log(data.toString());
        return data.map((json) => Doctor.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch doctors');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
  void getDetails()async{
   await fetchDoctors().then((value) => doctorList=value);
    update();
    log(doctorList.toString());
    click=doctorList[0].availability.keys.first;
    update();
    timeupdate=doctorList[0].availability[click]![0].substring(0,8);
    update();


  }
  void dateUpdate(String value){
    click=value;
    update();
    timeupdate=doctorList[0].availability[click]!.length==0? '':doctorList[0].availability[click]![0].substring(0,8);
    update();

  }
  void timeUpdate(String value){
    timeupdate=value;
    update();
  }











}