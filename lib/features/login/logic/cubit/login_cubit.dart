import 'package:doctor_hunt/core/helpers/constants.dart';
import 'package:doctor_hunt/core/helpers/secure_storage_helper.dart';
import 'package:doctor_hunt/core/helpers/shared_pref_helper.dart';
import 'package:doctor_hunt/core/networking/dio_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/login_request_body.dart';
import '../../data/models/login_response.dart';
import '../../data/repo/login_repo.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this._loginRepo) : super(const LoginStates.initial());
  final LoginRepo _loginRepo;
  LoginResponse? loginResponseData;

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLoginStates() async {
    emit(const LoginStates.loginLoading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponse) async{
      loginResponseData = loginResponse;
      await SharedPrefHelper.setData(SharedPrefKeys.userName, loginResponseData?.userData?.userName ?? "");
      await saveUserToken(loginResponseData?.userData?.token ?? '');
      emit(LoginStates.loginSuccess(loginResponse));
    },
    failure: (error){
       emit(LoginStates.loginFailure(error));
    });
  }

  Future<void> saveUserToken(String token) async
  {
    await SecureStorageHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioConfig.setTokenIntoHeaderAfterLogin(token);
  }
}
