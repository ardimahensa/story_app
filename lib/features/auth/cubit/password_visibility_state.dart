part of 'password_visibility_cubit.dart';

@freezed
class PasswordVisibilityState with _$PasswordVisibilityState {
  const factory PasswordVisibilityState.toggleVisibility(bool toggle) =
      _ToggleVisibility;
}
