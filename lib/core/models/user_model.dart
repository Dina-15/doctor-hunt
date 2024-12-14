class UserModel {
  String? name;
  String email;
  int? gender;
  String password;
  String? passwordConfirmation;
  String? phone;

  UserModel({
    required this.email,
    required this.password,
    this.passwordConfirmation,
    this.gender,
    this.name,
    this.phone,
  });
}
