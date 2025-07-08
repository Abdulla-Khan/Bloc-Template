import 'package:dartz/dartz.dart';
import 'package:bussels/core/errors/failure.dart';
import 'package:bussels/features/auth/login/data/models/login_request_model.dart';
import 'package:bussels/features/auth/login/domain/entities/login_entity.dart';
import 'package:bussels/features/auth/login/domain/respository/login_repository.dart';

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
