import 'package:bussels/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "event.dart";
part 'state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(LoginState()) {
    on<LoginButtonTapped>((event, emit) {});
  }
}
