class Doctor {
  final String doctorName;
  final String image;
  final String speciality;
  final String location;
  final int patientsServed;
  final int yearsOfExperience;
  final double rating;
  final int numberOfReviews;
  final Map<String, List<String>> availability;

  Doctor({
    required this.doctorName,
    required this.image,
    required this.speciality,
    required this.location,
    required this.patientsServed,
    required this.yearsOfExperience,
    required this.rating,
    required this.numberOfReviews,
    required this.availability,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    final availabilityJson = json['availability'] as Map<String, dynamic>;
    final availability = availabilityJson.map<String, List<String>>(
      (key, value) => MapEntry(
        key,
        (value as List<dynamic>).cast<String>(),
      ),
    );

    return Doctor(
      doctorName: json['doctor_name'],
      image: json['image'],
      speciality: json['speciality'],
      location: json['location'],
      patientsServed: json['patients_served'],
      yearsOfExperience: json['years_of_experience'],
      rating: json['rating'].toDouble(),
      numberOfReviews: json['number_of_reviews'],
      availability: availability,
    );
  }
}
