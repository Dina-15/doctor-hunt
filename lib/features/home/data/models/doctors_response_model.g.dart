// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsResponseModel _$DoctorsResponseModelFromJson(
        Map<String, dynamic> json) =>
    DoctorsResponseModel(
      doctorsList: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DoctorsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorsResponseModelToJson(
        DoctorsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.doctorsList,
    };

DoctorsData _$DoctorsDataFromJson(Map<String, dynamic> json) => DoctorsData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
      degree: json['degree'] as String?,
      specialization: json['specialization'] == null
          ? null
          : Specialization.fromJson(
              json['specialization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DoctorsDataToJson(DoctorsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'appoint_price': instance.price,
      'degree': instance.degree,
      'specialization': instance.specialization,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
