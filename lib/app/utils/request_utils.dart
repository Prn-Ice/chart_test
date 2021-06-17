import 'package:dio/dio.dart';

Future<T> requestAndCheck<T>(
  Future Function() request, {
  Function(T data)? onSuccess,
  Function()? beforeRequest,
  Function(dynamic e)? onError,
}) async {
  try {
    if (beforeRequest != null) {
      beforeRequest();
    }
    T response = await request();
    if (onSuccess != null) {
      onSuccess(response);
    }
    return response;
  } on DioError catch (e) {
    if (onError != null) {
      onError(e);
    }
    print(e.response?.data);
    rethrow;
  } catch (e) {
    if (onError != null) {
      onError(e);
    }
    print(e);
    rethrow;
  }
}
