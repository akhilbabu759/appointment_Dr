import 'package:dio/dio.dart';
import 'package:drbook/api/api.dart';
import 'package:drbook/screen/confirmation/model/confirmation-model.dart';
import 'package:get/get.dart';

class ConfirmationController extends GetxController{
  Appointment confirmationValue=Appointment(doctorName: '', appointmentDate: '', appointmentTime: '', location: '', appointmentPackage: '');
  Future<Appointment> fetchAppointmentData() async {
  try {
    final response = await Dio().get(ApiUrl().bookingConfirmation); // Replace with your API endpoint
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      return Appointment.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
void getApiValue()async{
  await fetchAppointmentData().then((value) {
    confirmationValue=value;
  });
  update();
}


}