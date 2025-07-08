import 'package:dartz/dartz.dart';
import 'package:bussels/core/errors/failure.dart';
import '../../data/models/login_request_model.dart';
import '../entities/login_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> login(LoginRequestModel model);
}
