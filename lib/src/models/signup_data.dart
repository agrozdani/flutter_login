import 'package:quiver/core.dart';

class SignupData {
  final String username;
  final String email;
  final String password;
  final String birthday;

  SignupData({
    required this.username,
    required this.email,
    required this.password,
    required this.birthday,
  });

  @override
  String toString() {
    return '$runtimeType($username, $email, $password, $birthday)';
  }

  @override
  bool operator ==(Object other) {
    if (other is SignupData) {
      return username == other.username &&
          email == other.email &&
          password == other.password &&
          birthday == other.birthday;
    }
    return false;
  }

  @override
  int get hashCode => hash4(username, email, password, birthday);
}
