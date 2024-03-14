part of 'stories_detail_bloc.dart';

@freezed
class StoriesDetailEvent with _$StoriesDetailEvent {
  const factory StoriesDetailEvent.started() = _Started;
  const factory StoriesDetailEvent.getDetailStories(String id) =
      _GetDetailStories;
}
