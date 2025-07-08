import 'package:bussels/core/di/service_locator.dart';
import 'package:bussels/features/auth/login/presentation/bloc/bloc.dart';
import 'package:bussels/features/auth/signup/presentation/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthProviders {
  static List<BlocProvider> getProviders() {
    return [
      BlocProvider<LoginBloc>(create: (context) => sl<LoginBloc>()),
      BlocProvider<SignUpBloc>(create: (context) => sl<SignUpBloc>()),
    ];
  }
}
