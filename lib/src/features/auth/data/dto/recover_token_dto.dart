class RecoverTokenDto{

  const RecoverTokenDto(this.status, {this.email, this.token, this.message});

  final int status;
  final String? email;
  final String? token;
  final String? message;
}