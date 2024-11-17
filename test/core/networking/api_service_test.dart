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

  group('Login API Tests', () {
    test('login method should return success response', () async {
      // arrange
      final loginRequestBody =
          LoginRequestBody(email: email, password: password);
      final expectedLoginResponse = LoginResponse(
          message: "Logged in Successfully.", code: 200, status: true);
      when(mockApiService.login(loginRequestBody))
          .thenAnswer((_) => Future.value(expectedLoginResponse));

      // act
      final response = await mockApiService.login(loginRequestBody);

      // assert
      expect(response, expectedLoginResponse);
    });

    test('login method should handle failure response', () async {
      // arrange
      final loginRequestBody =
          LoginRequestBody(email: wrongEmail, password: wrongPassword);
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
          email: email,
          name: name,
          gender: gender,
          password: password,
          passwordConfirmation: password,
          phone: phone);
      final expectedSignUpResponse = SignUpResponse(
          message: "Signed up Successfully.", code: 200, status: true);
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
          email: wrongEmail,
          name: name,
          gender: gender,
          password: wrongPassword,
          passwordConfirmation: wrongPassword,
          phone: phone);
      when(mockApiService.signUp(signUpRequestBody)).thenThrow(
        DioException(
          requestOptions: RequestOptions(
            path: ApiConstants.signUp,
          ),
        ),
      );

      // act & assert
      await expectLater(
        () async => mockApiService.signUp(signUpRequestBody),
        throwsA(isA<DioException>()),
        //! Use Skip in Dart to ignore tests for incomplete features or temporary issues.
        //! "I added the 'skip' to inform you about its functionality. Feel free to comment it, or remove it if necessary." ...
        skip: 'This test is currently not applicable',
      );
    });
  });
}
