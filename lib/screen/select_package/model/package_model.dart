class AppointmentOptions {
  final List<String> duration;
  final List<String> package;

  AppointmentOptions({
    required this.duration,
    required this.package,
  });

  factory AppointmentOptions.fromJson(Map<String, dynamic> json) {
    final List<dynamic> durationList = json['duration'] as List<dynamic>;
    final List<String> duration = durationList.map((value) => value.toString()).toList();

    final List<dynamic> packageList = json['package'] as List<dynamic>;
    final List<String> package = packageList.map((value) => value.toString()).toList();

    return AppointmentOptions(
      duration: duration,
      package: package,
    );
  }
}
