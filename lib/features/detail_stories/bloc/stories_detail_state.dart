part of 'stories_detail_bloc.dart';

@freezed
class StoriesDetailState with _$StoriesDetailState {
  const factory StoriesDetailState.initial() = _Initial;
  const factory StoriesDetailState.storiesDetailLoaded(
      DetailStoryList detailStoryList) = _StoriesDetailLoaded;
  const factory StoriesDetailState.storiesLoading() = _StoriesLoading;
  const factory StoriesDetailState.storiesError(String errorMessage) =
      _StoriesError;

  static StoriesDetailState fromLoginResponse(
      DetailStoriesResponse detailStoriesResponse) {
    return StoriesDetailState.storiesError(
        detailStoriesResponse.message.toString());
  }
}
