class LoginResponse {
  const LoginResponse(this.prefix, this.jwt);

  final String prefix;
  final String jwt;

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(json['prefix'], json['jwt']);
  }
}
