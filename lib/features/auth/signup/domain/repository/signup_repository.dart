import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../../data/models/signup_request_model.dart';

abstract class SignUpRepository {
  Future<Either<Failure, dynamic>> signUp(SignUpRequestModel model);
}
