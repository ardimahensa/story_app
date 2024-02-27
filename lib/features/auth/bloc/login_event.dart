part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.loginRequest({
    required String email,
    required String password,
  }) = _LoginRequest;
  const factory LoginEvent.logoutRequested() = _LogoutRequested;
}
