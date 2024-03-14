part of 'stories_bloc.dart';

@freezed
class StoriesState with _$StoriesState {
  const factory StoriesState.initial() = _Initial;
  const factory StoriesState.storiesLoading() = _StoriesLoading;
  const factory StoriesState.storiesLoaded(List<StoryList> story) =
      _StoriesLoaded;
  const factory StoriesState.storiesError(String errorMessage) = _StoriesError;

  static StoriesState fromLoginResponse(StoriesResponse storiesResponse) {
    return StoriesState.storiesError(storiesResponse.message.toString());
  }
}
