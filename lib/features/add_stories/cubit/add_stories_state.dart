part of 'add_stories_cubit.dart';

@freezed
class AddStoriesState with _$AddStoriesState {
  const factory AddStoriesState.initial() = _Initial;
  const factory AddStoriesState.imageLoaded(String imagePath) = _ImageLoaded;
  const factory AddStoriesState.imageUploadSuccess(File imageFile) =
      _ImageUploadSuccess;
  const factory AddStoriesState.imageError(String errorMessage) = _ImageError;
}
