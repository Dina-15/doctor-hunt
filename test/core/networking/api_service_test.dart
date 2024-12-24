import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/models/user_model.dart';
import 'package:doctor_hunt/core/networking/api_constants.dart';
import 'package:doctor_hunt/core/networking/api_service.dart';
import 'package:doctor_hunt/features/login/data/models/login_request_body.dart';
import 'package:doctor_hunt/features/login/data/models/login_response.dart';
import 'package:doctor_hunt/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_hunt/features/sign_up/data/models/sign_up_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockApiService extends Mock implements ApiService {}

void main() {
  late MockApiService mockApiService;

  const String email = 'a@gmail.com';
  const String wrongEmail = 'wrong@gmail.com';
  const String password = 'password';
  const String wrongPassword = 'wrong-password';
  const String name = "user";
  const int gender = 0;
  const String phone = "0122";

  setUp(() {
    mockApiService = MockApiService();
  });

  LoginRequestBody createLoginRequest(UserModel user) {
    return LoginRequestBody(email: email, password: password);
  }

  SignUpRequestBody createSignUpRequest(UserModel user) {
    return SignUpRequestBody(
      email: email,
      name: name,
      gender: gender,
      password: password,
      passwordConfirmation: password,
      phone: phone,
    );
  }

  group('Login API Tests', () {
    test('login method should return success response', () async {
      // arrange
      final user = UserModel(
          email: email,
          password: password,);
      final loginRequestBody = createLoginRequest(user);
      final expectedLoginResponse = LoginResponse(
          message: "Logged in Successfully.", code: 200, status: true);
      when(() => mockApiService.login(loginRequestBody))
          .thenAnswer((_) async => expectedLoginResponse);
      // act
      final response = await mockApiService.login(loginRequestBody);
      // assert
      expect(response, expectedLoginResponse);
    });

    test('login method should handle failure response', () async {
      // arrange
      final user = UserModel(
        email: wrongEmail,
        password: wrongPassword,);
      final loginRequestBody = createLoginRequest(user);
      when(() => mockApiService.login(loginRequestBody)).thenThrow(
        DioException(
          requestOptions: RequestOptions(
            path: ApiConstants.login,
          ),
        ),
      );
      // act & assert
      expect(
        () async => await mockApiService.login(loginRequestBody),
        throwsA(isA<DioException>()),
      );
    });
  });

  group('Sign Up API Tests', () {
    test('sign up method should return success response', () async {
      // arrange
      final user = UserModel(
          email: email,
          password: password,
          name: name,
          phone: phone,
          gender: gender);
      final signUpRequestBody = createSignUpRequest(user);
      final expectedSignUpResponse = SignUpResponse(
          message: "Signed up Successfully.", code: 200, status: true);
      when(() => mockApiService.signUp(signUpRequestBody))
          .thenAnswer((_) async => expectedSignUpResponse);
      // act
      final response = await mockApiService.signUp(signUpRequestBody);
      // assert
      expect(response, expectedSignUpResponse);
    });

    test('sign up method should handle failure response', () async {
      // arrange
      final user = UserModel(
          email: wrongEmail,
          password: wrongPassword,
          name: name,
          phone: phone,
          gender: gender);
      final signUpRequestBody = createSignUpRequest(user);
      when(() => mockApiService.signUp(signUpRequestBody)).thenThrow(
        DioException(
          requestOptions: RequestOptions(
            path: ApiConstants.signUp,
          ),
        ),
      );
      // act & assert
      expect(
        () async => await mockApiService.signUp(signUpRequestBody),
        throwsA(isA<DioException>()),
      );
    });
  });
}
