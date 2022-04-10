class RecoverTokenDto {
  const RecoverTokenDto(this.status, this.token);

  final int status;
  final String token;

  factory RecoverTokenDto.fromJson(Map<String, dynamic> json) {
    return RecoverTokenDto(json['status'], json['token']);
  }
}
