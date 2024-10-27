class RegisterModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  final String password_confirmation;

  RegisterModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.password_confirmation,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'gender': gender,
      'password': password,
      'password_confirmation': password_confirmation,
    };
  }
}
// data requested from Api
// {
//   'name': 'diaa',
//   'email': 'adadaa@aa.com',
//   'phone': '123124',
//   'gender': '0',
//   'password': 'passwordddd',
//   'password_confirmation': 'passwordddd'
// }