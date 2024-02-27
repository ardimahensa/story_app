part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.registerLoading() = _RegisterLoading;
  const factory RegisterState.registerSucces(
      RegisterResponse registerResponse) = _RegisterSuccess;
  const factory RegisterState.registerError(String errorMessage) =
      _RegisterError;
}
