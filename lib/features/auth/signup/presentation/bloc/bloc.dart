import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/signup_usecase.dart';

part "event.dart";
part 'state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;
  SignUpBloc({required this.signUpUseCase}) : super(SignUpState()) {
    on<SignUpButtonTapped>((event, emit) {});
  }
}
