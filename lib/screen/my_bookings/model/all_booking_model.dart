class AllBooking {
  final String bookingId;
  final String doctorName;
  final String location;
  final String appointmentDate;
  final String appointmentTime;

  AllBooking({
    required this.bookingId,
    required this.doctorName,
    required this.location,
    required this.appointmentDate,
    required this.appointmentTime,
  });

  factory AllBooking.fromJson(Map<String, dynamic> json) {
    return AllBooking(
      bookingId: json['booking_id'] as String,
      doctorName: json['doctor_name'] as String,
      location: json['location'] as String,
      appointmentDate: json['appointment_date'] as String,
      appointmentTime: json['appointment_time'] as String,
    );
  }
}
