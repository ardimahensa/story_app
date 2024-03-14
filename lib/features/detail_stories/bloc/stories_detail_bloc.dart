import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/detail_stories/datasource/data/detail_stories_api.dart';
import 'package:story_u/features/detail_stories/datasource/model/detail_stories_response.dart';

import '../datasource/model/list_detail_stories_model.dart';

part 'stories_detail_event.dart';
part 'stories_detail_state.dart';
part 'stories_detail_bloc.freezed.dart';

class StoriesDetailBloc extends Bloc<StoriesDetailEvent, StoriesDetailState> {
  StoriesDetailBloc() : super(const _Initial()) {
    on<_GetDetailStories>((event, emit) async {
      emit(const StoriesDetailState.storiesLoading());
      try {
        final result = await DetailStoriesApiServices().detailStories(event.id);
        if (result.error == false) {
          emit(StoriesDetailState.storiesDetailLoaded(result.detailStory));
        } else if (result.error == true) {
          emit(StoriesDetailState.storiesError(result.message));
        }
      } catch (error) {
        emit(StoriesDetailState.storiesError(error.toString()));
      }
    });
  }
}
