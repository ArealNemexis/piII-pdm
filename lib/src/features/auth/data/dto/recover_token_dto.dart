class RecoverTokenDto{

  const RecoverTokenDto(this.status, {this.token, this.message});

  final int status;
  final String? token;
  final String? message;
}