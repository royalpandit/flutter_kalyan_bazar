
class ResponseGet {
  String? message;
  bool? status;
  int? code;

  ResponseGet({this.message, this.status, this.code});

  ResponseGet.fromJson(Map<String, dynamic> json) {
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["status"] is bool) {
      status = json["status"];
    }
    if(json["code"] is int) {
      code = json["code"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
    _data["status"] = status;
    _data["code"] = code;
    return _data;
  }
}