import 'package:doctor_hunt/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_hunt/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctor_hunt/features/sign_up/logic/cubit/sign_up_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit(this._signUpRepo) : super(const SignUpStates.initial());
  final SignUpRepo _signUpRepo;

  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  TextEditingController nameController1 = TextEditingController();
  TextEditingController emailController1 = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController phoneController1 = TextEditingController();
  TextEditingController genderController1 = TextEditingController();
  TextEditingController confirmPasswordController1 = TextEditingController();
  emitSignUpStates() async {
    emit(const SignUpStates.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController1.text,
        password: passwordController1.text,
        email: emailController1.text,
        gender: 0,
        passwordConfirmation: confirmPasswordController1.text,
        phone: phoneController1.text,
      ),
    );
    response.whenOrNull(success: (signUpResponse) {
      emit(SignUpStates.signUpSuccess(signUpResponse));
    }, failure: (error) {
      emit(SignUpStates.signUpFailure(error));
    });
  }
}
