// ignore_for_file: prefer_typing_uninitialized_variables

class AppResponse<T> {
  late bool status;
  late int statusCode;
  late String message;
  var data;

  AppResponse(isSuccess, this.statusCode, Map<String, dynamic> response,
      [this.data]) {
    this.status = isSuccess ?? false;
    this.message = getResponseMessage(response, isSuccess);
  }

  String getResponseMessage(Map<String, dynamic> response, isSuccessful) {
    String message;
    if (isSuccessful) {
      message = response["status"]["msg"] ?? "Success";
    } else {
      message = response["status"]["msg"] ?? "an error occurred";
    }
    return message;
  }
}
