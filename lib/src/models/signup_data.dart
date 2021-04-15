import 'package:quiver/core.dart';

class SignupData {
  final String username;
  final String name;
  final String password;

  SignupData({
    required this.username,
    required this.name,
    required this.password,
  });

  @override
  String toString() {
    return '$runtimeType($username, $name, $password)';
  }

  @override
  bool operator ==(Object other) {
    if (other is SignupData) {
      return username == other.username &&
          name == other.name &&
          password == other.password;
    }
    return false;
  }

  @override
  int get hashCode => hash3(username, name, password);
}
