import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/stories/datasource/data/stories_api_services.dart';
import 'package:story_u/features/stories/datasource/model/list_stories_model.dart';
import 'package:story_u/features/stories/datasource/model/stories_response_model.dart';

part 'stories_event.dart';
part 'stories_state.dart';
part 'stories_bloc.freezed.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesApiServices storiesApiServices = StoriesApiServices();
  final int _currentPage = 1;
  final int _currentSize = 20;

  StoriesBloc() : super(const _Initial()) {
    on<_GetStories>((event, emit) async {
      emit(const StoriesState.storiesLoading());
      try {
        final result = await storiesApiServices.getAllStories(
          size: _currentSize,
          page: _currentPage,
        );
        if (result.error == false) {
          emit(StoriesState.storiesLoaded(result.stories));
        } else if (result.error == true) {
          emit(StoriesState.storiesError(result.message));
        }
      } catch (error) {
        emit(StoriesState.storiesError(error.toString()));
      }
    });
  }
}
