// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function(File imageFile) imageUploadSuccess,
    required TResult Function(String errorMessage) imageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function(File imageFile)? imageUploadSuccess,
    TResult? Function(String errorMessage)? imageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function(File imageFile)? imageUploadSuccess,
    TResult Function(String errorMessage)? imageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_ImageUploadSuccess value) imageUploadSuccess,
    required TResult Function(_ImageError value) imageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult? Function(_ImageError value)? imageError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult Function(_ImageError value)? imageError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoriesStateCopyWith<$Res> {
  factory $AddStoriesStateCopyWith(
          AddStoriesState value, $Res Function(AddStoriesState) then) =
      _$AddStoriesStateCopyWithImpl<$Res, AddStoriesState>;
}

/// @nodoc
class _$AddStoriesStateCopyWithImpl<$Res, $Val extends AddStoriesState>
    implements $AddStoriesStateCopyWith<$Res> {
  _$AddStoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddStoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddStoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function(File imageFile) imageUploadSuccess,
    required TResult Function(String errorMessage) imageError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function(File imageFile)? imageUploadSuccess,
    TResult? Function(String errorMessage)? imageError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function(File imageFile)? imageUploadSuccess,
    TResult Function(String errorMessage)? imageError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_ImageUploadSuccess value) imageUploadSuccess,
    required TResult Function(_ImageError value) imageError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult? Function(_ImageError value)? imageError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult Function(_ImageError value)? imageError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddStoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ImageLoadedImplCopyWith<$Res> {
  factory _$$ImageLoadedImplCopyWith(
          _$ImageLoadedImpl value, $Res Function(_$ImageLoadedImpl) then) =
      __$$ImageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$ImageLoadedImplCopyWithImpl<$Res>
    extends _$AddStoriesStateCopyWithImpl<$Res, _$ImageLoadedImpl>
    implements _$$ImageLoadedImplCopyWith<$Res> {
  __$$ImageLoadedImplCopyWithImpl(
      _$ImageLoadedImpl _value, $Res Function(_$ImageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$ImageLoadedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageLoadedImpl implements _ImageLoaded {
  const _$ImageLoadedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'AddStoriesState.imageLoaded(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLoadedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLoadedImplCopyWith<_$ImageLoadedImpl> get copyWith =>
      __$$ImageLoadedImplCopyWithImpl<_$ImageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function(File imageFile) imageUploadSuccess,
    required TResult Function(String errorMessage) imageError,
  }) {
    return imageLoaded(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function(File imageFile)? imageUploadSuccess,
    TResult? Function(String errorMessage)? imageError,
  }) {
    return imageLoaded?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function(File imageFile)? imageUploadSuccess,
    TResult Function(String errorMessage)? imageError,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_ImageUploadSuccess value) imageUploadSuccess,
    required TResult Function(_ImageError value) imageError,
  }) {
    return imageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult? Function(_ImageError value)? imageError,
  }) {
    return imageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult Function(_ImageError value)? imageError,
    required TResult orElse(),
  }) {
    if (imageLoaded != null) {
      return imageLoaded(this);
    }
    return orElse();
  }
}

abstract class _ImageLoaded implements AddStoriesState {
  const factory _ImageLoaded(final String imagePath) = _$ImageLoadedImpl;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$ImageLoadedImplCopyWith<_$ImageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageUploadSuccessImplCopyWith<$Res> {
  factory _$$ImageUploadSuccessImplCopyWith(_$ImageUploadSuccessImpl value,
          $Res Function(_$ImageUploadSuccessImpl) then) =
      __$$ImageUploadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File imageFile});
}

/// @nodoc
class __$$ImageUploadSuccessImplCopyWithImpl<$Res>
    extends _$AddStoriesStateCopyWithImpl<$Res, _$ImageUploadSuccessImpl>
    implements _$$ImageUploadSuccessImplCopyWith<$Res> {
  __$$ImageUploadSuccessImplCopyWithImpl(_$ImageUploadSuccessImpl _value,
      $Res Function(_$ImageUploadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
  }) {
    return _then(_$ImageUploadSuccessImpl(
      null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ImageUploadSuccessImpl implements _ImageUploadSuccess {
  const _$ImageUploadSuccessImpl(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'AddStoriesState.imageUploadSuccess(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUploadSuccessImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUploadSuccessImplCopyWith<_$ImageUploadSuccessImpl> get copyWith =>
      __$$ImageUploadSuccessImplCopyWithImpl<_$ImageUploadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function(File imageFile) imageUploadSuccess,
    required TResult Function(String errorMessage) imageError,
  }) {
    return imageUploadSuccess(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function(File imageFile)? imageUploadSuccess,
    TResult? Function(String errorMessage)? imageError,
  }) {
    return imageUploadSuccess?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function(File imageFile)? imageUploadSuccess,
    TResult Function(String errorMessage)? imageError,
    required TResult orElse(),
  }) {
    if (imageUploadSuccess != null) {
      return imageUploadSuccess(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_ImageUploadSuccess value) imageUploadSuccess,
    required TResult Function(_ImageError value) imageError,
  }) {
    return imageUploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult? Function(_ImageError value)? imageError,
  }) {
    return imageUploadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult Function(_ImageError value)? imageError,
    required TResult orElse(),
  }) {
    if (imageUploadSuccess != null) {
      return imageUploadSuccess(this);
    }
    return orElse();
  }
}

abstract class _ImageUploadSuccess implements AddStoriesState {
  const factory _ImageUploadSuccess(final File imageFile) =
      _$ImageUploadSuccessImpl;

  File get imageFile;
  @JsonKey(ignore: true)
  _$$ImageUploadSuccessImplCopyWith<_$ImageUploadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageErrorImplCopyWith<$Res> {
  factory _$$ImageErrorImplCopyWith(
          _$ImageErrorImpl value, $Res Function(_$ImageErrorImpl) then) =
      __$$ImageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ImageErrorImplCopyWithImpl<$Res>
    extends _$AddStoriesStateCopyWithImpl<$Res, _$ImageErrorImpl>
    implements _$$ImageErrorImplCopyWith<$Res> {
  __$$ImageErrorImplCopyWithImpl(
      _$ImageErrorImpl _value, $Res Function(_$ImageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ImageErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageErrorImpl implements _ImageError {
  const _$ImageErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AddStoriesState.imageError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageErrorImplCopyWith<_$ImageErrorImpl> get copyWith =>
      __$$ImageErrorImplCopyWithImpl<_$ImageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String imagePath) imageLoaded,
    required TResult Function(File imageFile) imageUploadSuccess,
    required TResult Function(String errorMessage) imageError,
  }) {
    return imageError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String imagePath)? imageLoaded,
    TResult? Function(File imageFile)? imageUploadSuccess,
    TResult? Function(String errorMessage)? imageError,
  }) {
    return imageError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String imagePath)? imageLoaded,
    TResult Function(File imageFile)? imageUploadSuccess,
    TResult Function(String errorMessage)? imageError,
    required TResult orElse(),
  }) {
    if (imageError != null) {
      return imageError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ImageLoaded value) imageLoaded,
    required TResult Function(_ImageUploadSuccess value) imageUploadSuccess,
    required TResult Function(_ImageError value) imageError,
  }) {
    return imageError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ImageLoaded value)? imageLoaded,
    TResult? Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult? Function(_ImageError value)? imageError,
  }) {
    return imageError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ImageLoaded value)? imageLoaded,
    TResult Function(_ImageUploadSuccess value)? imageUploadSuccess,
    TResult Function(_ImageError value)? imageError,
    required TResult orElse(),
  }) {
    if (imageError != null) {
      return imageError(this);
    }
    return orElse();
  }
}

abstract class _ImageError implements AddStoriesState {
  const factory _ImageError(final String errorMessage) = _$ImageErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ImageErrorImplCopyWith<_$ImageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
