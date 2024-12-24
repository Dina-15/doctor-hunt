import 'package:json_annotation/json_annotation.dart';

part 'doctors_response_model.g.dart';

@JsonSerializable()
class DoctorsResponseModel {
  @JsonKey(name: 'data')
  List<DoctorsData?>? doctorsList;

  DoctorsResponseModel({
    this.doctorsList,
  });

  factory DoctorsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsResponseModelFromJson(json);
}

@JsonSerializable()
class DoctorsData {
  int? id;
  String? name;
  String? email;
  String? phone;
  @JsonKey(name: 'appoint_price')
  int? price;
  String? degree;
  Specialization? specialization;

  DoctorsData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.price,
    this.degree,
    this.specialization
  });

  factory DoctorsData.fromJson(Map<String, dynamic> json) =>
      _$DoctorsDataFromJson(json);
}

@JsonSerializable()
class Specialization
{
  String? name;
  int? id;
  Specialization({this.name, this.id});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}