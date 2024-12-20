import 'package:chopper/chopper.dart';
import 'package:shopping_app_home_work/presentation/product_page/widget/product.dart';
import 'package:swagger_demo/generated_code/auth_api.models.swagger.dart';
import 'package:swagger_demo/generated_code/auth_api.swagger.dart' as swagger;

class AuthApiRepository {
  AuthApiRepository(Uri baseUrl)
      : _authApi = swagger.AuthApi.create(baseUrl: baseUrl);

  final swagger.AuthApi _authApi;

  Future<Response?> fetchProduct({
    required String id,
    required String productName,
    required String price,
  }) =>
      _authApi.authenticationLoginPost(
        body: ProductRequest(
          username: username,
          password: password,
        ),
      );

  @override
  Future<Response?> logout(String? deviceId) =>
      _authApi.authenticationLogoutPost();
}
