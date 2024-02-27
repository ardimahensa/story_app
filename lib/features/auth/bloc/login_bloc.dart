import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/auth/datasource/data/api_services.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/auth/datasource/model/login_response_model.dart';
import 'package:story_u/features/auth/datasource/model/login_result_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ApiServices apiServices = ApiServices();

  LoginBloc() : super(const _Initial()) {
    on<_LoginRequest>((event, emit) async {
      emit(const _LoginLoading());
      try {
        final result = await apiServices.login(event.email, event.password);
        if (result.error == false) {
          final loginResult = result.loginResult;
          await UserDataLocal().saveLoginResult(loginResult);
          emit(LoginState.loginSuccess(loginResult));
        } else {
          emit(LoginState.loginError(result.message));
        }
      } catch (error) {
        emit(LoginState.loginError(error.toString()));
      }
    });

    on<_LogoutRequested>((event, emit) async {
      await UserDataLocal().clearLoginResult();
      emit(const LoginState.loggedOut());
    });
  }
}
