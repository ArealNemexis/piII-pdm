class HttpResponse {
  const HttpResponse(this.status, this.message);

  final int status;
  final String message;

  factory HttpResponse.fromJson(Map<String, dynamic> json) {
    return HttpResponse(json['status'], json['message']);
  }
}