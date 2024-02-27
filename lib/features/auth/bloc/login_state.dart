part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = _LoginLoading;
  const factory LoginState.loginSuccess(LoginResult loginResult) =
      _LoginSuccess;
  const factory LoginState.loginError(String errorMessage) = _LoginError;
  const factory LoginState.loggedOut() = _LoggedOut;

  static LoginState fromLoginResponse(LoginResponse loginResponse) {
    return LoginState.loginError(loginResponse.message.toString());
  }
}
