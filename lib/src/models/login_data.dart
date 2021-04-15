import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String username;

  LoginData({
    required this.name,
    required this.password,
    required this.username,
  });

  @override
  String toString() {
    return '$runtimeType($name, $password, $username)';
  }

  @override
  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name &&
          password == other.password &&
          username == other.username;
    }
    return false;
  }

  @override
  int get hashCode => hash3(name, password, username);
}
