import 'package:dio/dio.dart' hide Headers;

class ServerError implements Exception {
  String _errorMessage = "unkown error";

  ServerError.withError(DioError error) {
    _handleError(error);
  }

  ServerError.withMsg(String errMsg) {
    _errorMessage = errMsg;
  }

  getErrorMessage() {
    return _errorMessage;
  }

  _handleError(DioError error) {
    switch (error.type) {
      case DioErrorType.CANCEL:
        _errorMessage = "Request was cancelled";
        break;
      case DioErrorType.CONNECT_TIMEOUT:
        _errorMessage = "Connection timeout";
        break;
      case DioErrorType.DEFAULT:
        _errorMessage = "Connection failed due to internet connection";
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        _errorMessage = "Receive timeout in connection";
        break;
      case DioErrorType.RESPONSE:
        _errorMessage =
            "Received invalid status code: ${error.response.statusCode}";
        break;
      case DioErrorType.SEND_TIMEOUT:
        _errorMessage = "Receive timeout in send request";
        break;
    }
    return _errorMessage;
  }
}
