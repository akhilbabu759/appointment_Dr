import 'package:dio/dio.dart';
import 'package:drbook/api/api.dart';
import 'package:drbook/screen/my_bookings/model/all_booking_model.dart';
import 'package:get/get.dart';

class AllBookingController extends GetxController{
  List<AllBooking> allbooking=[];
  Future<List<AllBooking>> fetchAllBookings() async {
  try {
    final response = await Dio().get(ApiUrl().viewAllBooking); // Replace with your API endpoint
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data as List<dynamic>;
      final List<AllBooking> allBookings = data.map((item) => AllBooking.fromJson(item)).toList();
      return allBookings;
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
  
}
void getValue()async{
  await fetchAllBookings().then((value) {
    allbooking=value;
  });
  update();
}



}