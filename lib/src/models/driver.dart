class Driver {
  final String username;
  final String email;
  final String token;

  Driver({required this.username, required this.email, required this.token});

  factory Driver.fromJson(Map<String, dynamic> json) {
    return Driver(
      username: json['username'],
      email: json['email'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'token': token,
    };
  }
}
