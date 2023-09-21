class Appointment {
  final String doctorName;
  final String appointmentDate;
  final String appointmentTime;
  final String location;
  final String appointmentPackage;

  Appointment({
    required this.doctorName,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.location,
    required this.appointmentPackage,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      doctorName: json['doctor_name'] as String,
      appointmentDate: json['appointment_date'] as String,
      appointmentTime: json['appointment_time'] as String,
      location: json['location'] as String,
      appointmentPackage: json['appointment_package'] as String,
    );
  }
}
