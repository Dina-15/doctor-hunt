import 'package:doctor_hunt/core/networking/api_error_handler.dart';
import 'package:doctor_hunt/core/networking/api_result.dart';
import 'package:doctor_hunt/features/home/data/apis/home_api_service.dart';
import 'package:doctor_hunt/features/home/data/models/doctors_response_model.dart';

import '../models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async
  {
    try{
      final response = await _homeApiService.getSpecializations();

      return ApiResult.success(response);
    }
    catch(error)
    {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<DoctorsResponseModel>> getAllDoctors() async
  {
    try{
      final response = await _homeApiService.getAllDoctors();

      return ApiResult.success(response);
    }
    catch(error)
    {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}