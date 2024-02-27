part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.registerRequest({
    required String name,
    required String email,
    required String passowrd,
  }) = _RegisterRequest;
}
