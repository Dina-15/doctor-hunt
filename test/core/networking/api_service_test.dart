import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/networking/api_constants.dart';
import 'package:doctor_hunt/core/networking/api_service.dart';
import 'package:doctor_hunt/features/login/data/models/login_request_body.dart';
import 'package:doctor_hunt/features/login/data/models/login_response.dart';
import 'package:doctor_hunt/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doctor_hunt/features/sign_up/data/models/sign_up_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'api_service_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  late MockApiService mockApiService;

  setUp(() {
    mockApiService = MockApiService();
  });
  group('Login API Tests', () {
    test('login method should return success response', () async {
      // arrange
      final loginRequestBody =
          LoginRequestBody(email: 'a@gmail.com', password: 'password');

      final expectedLoginResponse = LoginResponse(
          message: "Loggedin Successfuly.", code: 200, status: true);

      when(mockApiService.login(loginRequestBody))
          .thenAnswer((_) => Future.value(expectedLoginResponse));

      // act
      final response = await mockApiService.login(loginRequestBody);

      // assert
      expect(response, expectedLoginResponse);
    });

    test('login method should handle failure response', () async {
      // arrange
      final loginRequestBody = LoginRequestBody(
          email: 'wrong@gmail.com', password: 'wrong-password');

      when(mockApiService.login(loginRequestBody)).thenThrow(
        DioException(
          requestOptions: RequestOptions(
            path: ApiConstants.login,
          ),
        ),
      );

      // act & assert
      await expectLater(() async => mockApiService.login(loginRequestBody),
          throwsA(isA<DioException>()));
    });
  });

  group('Sign Up API Tests', () {
    test('sign up method should return success response', () async {
      // arrange
      final signUpRequestBody = SignUpRequestBody(
          email: 'a@gmail.com',
          name: "user",
          gender: 0,
          password: 'password',
          passwordConfirmation: "password",
          phone: "0122");

      final expectedSignUpResponse = SignUpResponse(
          message: "Loggedin Successfuly.", code: 200, status: true);

      when(mockApiService.signUp(signUpRequestBody))
          .thenAnswer((_) => Future.value(expectedSignUpResponse));

      // act
      final response = await mockApiService.signUp(signUpRequestBody);

      // assert
      expect(response, expectedSignUpResponse);
    });

    test('sign up method should handle failure response', () async {
      // arrange
      final signUpRequestBody = SignUpRequestBody(
          email: 'wrong@gmail.com',
          name: "user",
          gender: 0,
          password: 'wrong-password',
          passwordConfirmation: "wrong-password",
          phone: "0122");

      when(mockApiService.signUp(signUpRequestBody)).thenThrow(
        DioException(
          requestOptions: RequestOptions(
            path: ApiConstants.signUp,
          ),
        ),
      );

      // act & assert
      await expectLater(() async => mockApiService.signUp(signUpRequestBody),
          throwsA(isA<DioException>()));
    });
  });
}
