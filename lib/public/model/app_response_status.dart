class AppResponseStatus {
  String? msg;

  AppResponseStatus({this.msg});

  AppResponseStatus.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['msg'] = msg;
    return json;
  }
}
