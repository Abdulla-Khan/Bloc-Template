import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../../data/models/login_request_model.dart';
import '../entities/login_entity.dart';
import '../respository/login_repository.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, LoginEntity>> call({
    required String email,
    required String password,
    required String fcmToken,
  }) async {
    return await repository.login(
      LoginRequestModel(email: email, password: password, fcmToken: fcmToken),
    );
  }
}
