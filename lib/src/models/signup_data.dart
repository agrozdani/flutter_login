import 'package:quiver/core.dart';

class SignupData {
  final String username;
  final String email;
  final String password;

  SignupData({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($username, $email, $password)';
  }

  @override
  bool operator ==(Object other) {
    if (other is SignupData) {
      return username == other.username &&
          email == other.email &&
          password == other.password;
    }
    return false;
  }

  @override
  int get hashCode => hash3(username, email, password);
}
