class DoctorModel {
  final String name;
  final String image;
  final String? jobTitle;
  final double rate;
  final double? pricePerHour;

  DoctorModel({
    this.jobTitle,
    this.pricePerHour,
    required this.image,
    required this.name,
    required this.rate,
  });
}
