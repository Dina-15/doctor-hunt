import '../../data/models/auth_page_model.dart';

class LoginEntity {
  LoginEntity._();
  static final LoginEntity _instance = LoginEntity._();
  factory LoginEntity() => _instance;
  final AuthPageModel loginModel = AuthPageModel(
      title: "Welcome back",
      subtitle:
          "You can choose a doctor, book an appointment, and watch live Doctors");
}