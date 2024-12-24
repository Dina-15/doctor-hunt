import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/networking/api_constants.dart';
import 'package:doctor_hunt/features/home/data/models/doctors_response_model.dart';
import 'package:retrofit/retrofit.dart';

import '../models/specialization_response_model.dart';

part "home_api_service.g.dart";

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specializationsIndexEndPoint)
  Future<SpecializationsResponseModel> getSpecializations();

  @GET(ApiConstants.allDoctorsIndexEndPoint)
  Future<DoctorsResponseModel> getAllDoctors();
}