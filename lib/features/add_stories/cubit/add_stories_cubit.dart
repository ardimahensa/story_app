import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../datasource/data/add_stories_api.dart';
import '../datasource/model/photo_response_model.dart';

part 'add_stories_state.dart';
part 'add_stories_cubit.freezed.dart';

class AddStoriesCubit extends Cubit<AddStoriesState> {
  AddStoriesCubit() : super(const AddStoriesState.initial());
  final AddStoriesApi _addStoriesApi = AddStoriesApi();

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> pickImageGaleri() async {
    try {
      final pickImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickImage != null) {
        emit(AddStoriesState.imageLoaded(pickImage.path));
      } else {
        emit(const AddStoriesState.imageError('No Image Selected'));
      }
    } catch (error) {
      emit(AddStoriesState.imageError(error.toString()));
    }
  }

  Future<void> pickImageCamera() async {
    try {
      final pickImage =
          await _imagePicker.pickImage(source: ImageSource.camera);
      if (pickImage != null) {
        emit(AddStoriesState.imageLoaded(pickImage.path));
      } else {
        emit(const AddStoriesState.imageError('No Image Selected'));
      }
    } catch (error) {
      emit(AddStoriesState.imageError(error.toString()));
    }
  }

  Future<void> uploadImage(File imageFile, String description) async {
    try {
      final bytes = await imageFile.readAsBytes();
      final UploadPhotoResponse response =
          await _addStoriesApi.postStories(bytes, imageFile.path, description);
      if (response.error != true) {
        emit(AddStoriesState.imageUploadSuccess(imageFile));
      }
    } catch (error) {
      emit(AddStoriesState.imageError(error.toString()));
    }
  }

  void reset() {
    emit(const AddStoriesState.initial());
  }
}
