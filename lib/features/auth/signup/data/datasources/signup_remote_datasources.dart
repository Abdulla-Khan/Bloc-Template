import '../../../../../core/network/api_client.dart';
import '../models/signup_request_model.dart';

abstract class SignUpRemoteDataSource {
  Future<dynamic> signUp(SignUpRequestModel model);
}

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final ApiClient apiClient;

  SignUpRemoteDataSourceImpl(this.apiClient);

  @override
  Future<dynamic> signUp(SignUpRequestModel model) async {
    try {
      final response = await apiClient.post(
        '/api/auth/signup',
        data: model.toJson(),
      );

      return response.data;
    } catch (e) {
      throw Exception('Signup failed: ${e.toString()}');
    }
  }
}
