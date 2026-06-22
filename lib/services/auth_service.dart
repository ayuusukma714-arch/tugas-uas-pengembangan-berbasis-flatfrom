class AuthService {
  static final List<Map<String, String>> _users = [
    {'email': 'admin@gmail.com', 'password': '123456'},
  ];

  String? currentUser;

  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    bool found = _users.any(
      (user) => user['email'] == email && user['password'] == password,
    );

    if (found) {
      currentUser = email;
    }

    return found;
  }

  Future<bool> register(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    bool exists = _users.any((user) => user['email'] == email);

    if (exists) {
      return false;
    }

    _users.add({'email': email, 'password': password});

    return true;
  }

  Future<void> logout() async {
    currentUser = null;
  }

  String? getCurrentUser() {
    return currentUser;
  }
}
