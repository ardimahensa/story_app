import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_visibility_state.dart';
part 'password_visibility_cubit.freezed.dart';

class PasswordVisibilityCubit extends Cubit<PasswordVisibilityState> {
  PasswordVisibilityCubit()
      : super(const PasswordVisibilityState.toggleVisibility(true));
  void toggleVisibility() {
    return emit(
      PasswordVisibilityState.toggleVisibility(
        !state.toggle,
      ),
    );
  }
}
