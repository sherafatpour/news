/// message : " "
/// error : 1

class DioExceptionModel {
  DioExceptionModel({
    String? message,
    int? code,}){
    _message = message;
    _code = code;
  }

  DioExceptionModel.fromJson(dynamic json) {
    _message = json['message'];
    _code = json['code'];
  }
  String? _message;
  int? _code;

  String? get message => _message;
  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['code'] = _code;
    return map;
  }

}
