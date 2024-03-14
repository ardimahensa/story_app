// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoriesDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getDetailStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getDetailStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getDetailStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailStories value) getDetailStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailStories value)? getDetailStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailStories value)? getDetailStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesDetailEventCopyWith<$Res> {
  factory $StoriesDetailEventCopyWith(
          StoriesDetailEvent value, $Res Function(StoriesDetailEvent) then) =
      _$StoriesDetailEventCopyWithImpl<$Res, StoriesDetailEvent>;
}

/// @nodoc
class _$StoriesDetailEventCopyWithImpl<$Res, $Val extends StoriesDetailEvent>
    implements $StoriesDetailEventCopyWith<$Res> {
  _$StoriesDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$StoriesDetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StoriesDetailEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getDetailStories,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getDetailStories,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getDetailStories,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailStories value) getDetailStories,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailStories value)? getDetailStories,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailStories value)? getDetailStories,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StoriesDetailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetDetailStoriesImplCopyWith<$Res> {
  factory _$$GetDetailStoriesImplCopyWith(_$GetDetailStoriesImpl value,
          $Res Function(_$GetDetailStoriesImpl) then) =
      __$$GetDetailStoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetDetailStoriesImplCopyWithImpl<$Res>
    extends _$StoriesDetailEventCopyWithImpl<$Res, _$GetDetailStoriesImpl>
    implements _$$GetDetailStoriesImplCopyWith<$Res> {
  __$$GetDetailStoriesImplCopyWithImpl(_$GetDetailStoriesImpl _value,
      $Res Function(_$GetDetailStoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDetailStoriesImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDetailStoriesImpl implements _GetDetailStories {
  const _$GetDetailStoriesImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'StoriesDetailEvent.getDetailStories(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailStoriesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailStoriesImplCopyWith<_$GetDetailStoriesImpl> get copyWith =>
      __$$GetDetailStoriesImplCopyWithImpl<_$GetDetailStoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) getDetailStories,
  }) {
    return getDetailStories(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? getDetailStories,
  }) {
    return getDetailStories?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? getDetailStories,
    required TResult orElse(),
  }) {
    if (getDetailStories != null) {
      return getDetailStories(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailStories value) getDetailStories,
  }) {
    return getDetailStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailStories value)? getDetailStories,
  }) {
    return getDetailStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailStories value)? getDetailStories,
    required TResult orElse(),
  }) {
    if (getDetailStories != null) {
      return getDetailStories(this);
    }
    return orElse();
  }
}

abstract class _GetDetailStories implements StoriesDetailEvent {
  const factory _GetDetailStories(final String id) = _$GetDetailStoriesImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetDetailStoriesImplCopyWith<_$GetDetailStoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoriesDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DetailStoryList detailStoryList)
        storiesDetailLoaded,
    required TResult Function() storiesLoading,
    required TResult Function(String errorMessage) storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult? Function()? storiesLoading,
    TResult? Function(String errorMessage)? storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult Function()? storiesLoading,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesDetailLoaded value) storiesDetailLoaded,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesError value) storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesError value)? storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesDetailStateCopyWith<$Res> {
  factory $StoriesDetailStateCopyWith(
          StoriesDetailState value, $Res Function(StoriesDetailState) then) =
      _$StoriesDetailStateCopyWithImpl<$Res, StoriesDetailState>;
}

/// @nodoc
class _$StoriesDetailStateCopyWithImpl<$Res, $Val extends StoriesDetailState>
    implements $StoriesDetailStateCopyWith<$Res> {
  _$StoriesDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$StoriesDetailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StoriesDetailState.initial()';
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
    required TResult Function(DetailStoryList detailStoryList)
        storiesDetailLoaded,
    required TResult Function() storiesLoading,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult? Function()? storiesLoading,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult Function()? storiesLoading,
    TResult Function(String errorMessage)? storiesError,
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
    required TResult Function(_StoriesDetailLoaded value) storiesDetailLoaded,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StoriesDetailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StoriesDetailLoadedImplCopyWith<$Res> {
  factory _$$StoriesDetailLoadedImplCopyWith(_$StoriesDetailLoadedImpl value,
          $Res Function(_$StoriesDetailLoadedImpl) then) =
      __$$StoriesDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailStoryList detailStoryList});
}

/// @nodoc
class __$$StoriesDetailLoadedImplCopyWithImpl<$Res>
    extends _$StoriesDetailStateCopyWithImpl<$Res, _$StoriesDetailLoadedImpl>
    implements _$$StoriesDetailLoadedImplCopyWith<$Res> {
  __$$StoriesDetailLoadedImplCopyWithImpl(_$StoriesDetailLoadedImpl _value,
      $Res Function(_$StoriesDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailStoryList = null,
  }) {
    return _then(_$StoriesDetailLoadedImpl(
      null == detailStoryList
          ? _value.detailStoryList
          : detailStoryList // ignore: cast_nullable_to_non_nullable
              as DetailStoryList,
    ));
  }
}

/// @nodoc

class _$StoriesDetailLoadedImpl implements _StoriesDetailLoaded {
  const _$StoriesDetailLoadedImpl(this.detailStoryList);

  @override
  final DetailStoryList detailStoryList;

  @override
  String toString() {
    return 'StoriesDetailState.storiesDetailLoaded(detailStoryList: $detailStoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesDetailLoadedImpl &&
            (identical(other.detailStoryList, detailStoryList) ||
                other.detailStoryList == detailStoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailStoryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesDetailLoadedImplCopyWith<_$StoriesDetailLoadedImpl> get copyWith =>
      __$$StoriesDetailLoadedImplCopyWithImpl<_$StoriesDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DetailStoryList detailStoryList)
        storiesDetailLoaded,
    required TResult Function() storiesLoading,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesDetailLoaded(detailStoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult? Function()? storiesLoading,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesDetailLoaded?.call(detailStoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult Function()? storiesLoading,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesDetailLoaded != null) {
      return storiesDetailLoaded(detailStoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesDetailLoaded value) storiesDetailLoaded,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesDetailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesDetailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesDetailLoaded != null) {
      return storiesDetailLoaded(this);
    }
    return orElse();
  }
}

abstract class _StoriesDetailLoaded implements StoriesDetailState {
  const factory _StoriesDetailLoaded(final DetailStoryList detailStoryList) =
      _$StoriesDetailLoadedImpl;

  DetailStoryList get detailStoryList;
  @JsonKey(ignore: true)
  _$$StoriesDetailLoadedImplCopyWith<_$StoriesDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesLoadingImplCopyWith<$Res> {
  factory _$$StoriesLoadingImplCopyWith(_$StoriesLoadingImpl value,
          $Res Function(_$StoriesLoadingImpl) then) =
      __$$StoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesLoadingImplCopyWithImpl<$Res>
    extends _$StoriesDetailStateCopyWithImpl<$Res, _$StoriesLoadingImpl>
    implements _$$StoriesLoadingImplCopyWith<$Res> {
  __$$StoriesLoadingImplCopyWithImpl(
      _$StoriesLoadingImpl _value, $Res Function(_$StoriesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesLoadingImpl implements _StoriesLoading {
  const _$StoriesLoadingImpl();

  @override
  String toString() {
    return 'StoriesDetailState.storiesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DetailStoryList detailStoryList)
        storiesDetailLoaded,
    required TResult Function() storiesLoading,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult? Function()? storiesLoading,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult Function()? storiesLoading,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesLoading != null) {
      return storiesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesDetailLoaded value) storiesDetailLoaded,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesLoading != null) {
      return storiesLoading(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoading implements StoriesDetailState {
  const factory _StoriesLoading() = _$StoriesLoadingImpl;
}

/// @nodoc
abstract class _$$StoriesErrorImplCopyWith<$Res> {
  factory _$$StoriesErrorImplCopyWith(
          _$StoriesErrorImpl value, $Res Function(_$StoriesErrorImpl) then) =
      __$$StoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$StoriesErrorImplCopyWithImpl<$Res>
    extends _$StoriesDetailStateCopyWithImpl<$Res, _$StoriesErrorImpl>
    implements _$$StoriesErrorImplCopyWith<$Res> {
  __$$StoriesErrorImplCopyWithImpl(
      _$StoriesErrorImpl _value, $Res Function(_$StoriesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$StoriesErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesErrorImpl implements _StoriesError {
  const _$StoriesErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'StoriesDetailState.storiesError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesErrorImplCopyWith<_$StoriesErrorImpl> get copyWith =>
      __$$StoriesErrorImplCopyWithImpl<_$StoriesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(DetailStoryList detailStoryList)
        storiesDetailLoaded,
    required TResult Function() storiesLoading,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult? Function()? storiesLoading,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(DetailStoryList detailStoryList)? storiesDetailLoaded,
    TResult Function()? storiesLoading,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesError != null) {
      return storiesError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesDetailLoaded value) storiesDetailLoaded,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesDetailLoaded value)? storiesDetailLoaded,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesError != null) {
      return storiesError(this);
    }
    return orElse();
  }
}

abstract class _StoriesError implements StoriesDetailState {
  const factory _StoriesError(final String errorMessage) = _$StoriesErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$StoriesErrorImplCopyWith<_$StoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
