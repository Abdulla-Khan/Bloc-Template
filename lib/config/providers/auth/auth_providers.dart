import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/di/service_locator.dart';
import '../../../features/auth/login/presentation/bloc/bloc.dart';
import '../../../features/auth/signup/presentation/bloc/bloc.dart';

class AuthProviders {
  static List<BlocProvider> getProviders() {
    return [
      BlocProvider<LoginBloc>(create: (context) => sl<LoginBloc>()),
      BlocProvider<SignUpBloc>(create: (context) => sl<SignUpBloc>()),
    ];
  }
}
