class User {
  const User(this.email, this.password, {this.token});

  final String email;
  final String? password;
  final String? token;

  factory User.fromJson(Map<String, dynamic> json) =>
      User(json['email'], json['password'], token: json['token']);
}
