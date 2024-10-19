import 'package:doctor_hunt/features/login/data/models/auth_page_model.dart';

class SignUpEntity {
  SignUpEntity._();
  static final SignUpEntity _instance = SignUpEntity._();
  factory SignUpEntity() => _instance;
  final AuthPageModel signUpModel = AuthPageModel(
    title: "Join us to start booking",
    subtitle:
        "You can choose a doctor, book an appointment, and see live Doctors",
  );
}
//! Same to signin