import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failure.dart';
import '../../data/datasources/signup_remote_datasources.dart';
import '../../data/models/signup_request_model.dart';
import 'signup_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpRemoteDataSource dataSource;

  SignUpRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, dynamic>> signUp(SignUpRequestModel model) async {
    try {
      final responseModel = await dataSource.signUp(model);
      return Right(responseModel.message);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
