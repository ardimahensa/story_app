import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/auth/datasource/model/register_response_model.dart';

import '../datasource/data/api_services.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  ApiServices apiServices = ApiServices();

  RegisterBloc() : super(const _Initial()) {
    on<_RegisterRequest>((event, emit) async {
      emit(const _RegisterLoading());
      try {
        final result =
            await apiServices.register(event.name, event.email, event.passowrd);
        if (result.error == false) {
          emit(RegisterState.registerSucces(result));
        } else {
          emit(RegisterState.registerError(result.message));
        }
      } catch (error) {
        emit(RegisterState.registerError(error.toString()));
      }
    });
  }
}
