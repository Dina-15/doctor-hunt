import '../../data/models/auth_page_model.dart';

class LoginEntity {
  LoginEntity._();
  static final LoginEntity _instance = LoginEntity._();
  factory LoginEntity() => _instance;
  static final AuthPageModel loginModel = AuthPageModel(
    //! Make this static to use the same instance across the app
      title: "Welcome back",
      subtitle:
          "You can choose a doctor, book an appointment, and watch live Doctors");
}
//! Entites in Domain Layer, also its auth entity so you must work with clean arch by feature or make this entity in the core ...