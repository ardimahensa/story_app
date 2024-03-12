// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStories value) getStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStories value)? getStories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStories value)? getStories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesEventCopyWith<$Res> {
  factory $StoriesEventCopyWith(
          StoriesEvent value, $Res Function(StoriesEvent) then) =
      _$StoriesEventCopyWithImpl<$Res, StoriesEvent>;
}

/// @nodoc
class _$StoriesEventCopyWithImpl<$Res, $Val extends StoriesEvent>
    implements $StoriesEventCopyWith<$Res> {
  _$StoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetStoriesImplCopyWith<$Res> {
  factory _$$GetStoriesImplCopyWith(
          _$GetStoriesImpl value, $Res Function(_$GetStoriesImpl) then) =
      __$$GetStoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStoriesImplCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$GetStoriesImpl>
    implements _$$GetStoriesImplCopyWith<$Res> {
  __$$GetStoriesImplCopyWithImpl(
      _$GetStoriesImpl _value, $Res Function(_$GetStoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStoriesImpl implements _GetStories {
  const _$GetStoriesImpl();

  @override
  String toString() {
    return 'StoriesEvent.getStories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStories,
  }) {
    return getStories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStories,
  }) {
    return getStories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStories,
    required TResult orElse(),
  }) {
    if (getStories != null) {
      return getStories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStories value) getStories,
  }) {
    return getStories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStories value)? getStories,
  }) {
    return getStories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStories value)? getStories,
    required TResult orElse(),
  }) {
    if (getStories != null) {
      return getStories(this);
    }
    return orElse();
  }
}

abstract class _GetStories implements StoriesEvent {
  const factory _GetStories() = _$GetStoriesImpl;
}

/// @nodoc
mixin _$StoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storiesLoading,
    required TResult Function(List<Story> story) storiesLoaded,
    required TResult Function(String errorMessage) storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Story> story)? storiesLoaded,
    TResult? Function(String errorMessage)? storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storiesLoading,
    TResult Function(List<Story> story)? storiesLoaded,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesError value) storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesError value)? storiesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$StoriesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StoriesState.initial()';
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
    required TResult Function() storiesLoading,
    required TResult Function(List<Story> story) storiesLoaded,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Story> story)? storiesLoaded,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storiesLoading,
    TResult Function(List<Story> story)? storiesLoaded,
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
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$StoriesLoadingImplCopyWith<$Res> {
  factory _$$StoriesLoadingImplCopyWith(_$StoriesLoadingImpl value,
          $Res Function(_$StoriesLoadingImpl) then) =
      __$$StoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesLoadingImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesLoadingImpl>
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
    return 'StoriesState.storiesLoading()';
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
    required TResult Function() storiesLoading,
    required TResult Function(List<Story> story) storiesLoaded,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Story> story)? storiesLoaded,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storiesLoading,
    TResult Function(List<Story> story)? storiesLoaded,
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
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesLoading != null) {
      return storiesLoading(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoading implements StoriesState {
  const factory _StoriesLoading() = _$StoriesLoadingImpl;
}

/// @nodoc
abstract class _$$StoriesLoadedImplCopyWith<$Res> {
  factory _$$StoriesLoadedImplCopyWith(
          _$StoriesLoadedImpl value, $Res Function(_$StoriesLoadedImpl) then) =
      __$$StoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Story> story});
}

/// @nodoc
class __$$StoriesLoadedImplCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesLoadedImpl>
    implements _$$StoriesLoadedImplCopyWith<$Res> {
  __$$StoriesLoadedImplCopyWithImpl(
      _$StoriesLoadedImpl _value, $Res Function(_$StoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_$StoriesLoadedImpl(
      null == story
          ? _value._story
          : story // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$StoriesLoadedImpl implements _StoriesLoaded {
  const _$StoriesLoadedImpl(final List<Story> story) : _story = story;

  final List<Story> _story;
  @override
  List<Story> get story {
    if (_story is EqualUnmodifiableListView) return _story;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_story);
  }

  @override
  String toString() {
    return 'StoriesState.storiesLoaded(story: $story)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesLoadedImpl &&
            const DeepCollectionEquality().equals(other._story, _story));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_story));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesLoadedImplCopyWith<_$StoriesLoadedImpl> get copyWith =>
      __$$StoriesLoadedImplCopyWithImpl<_$StoriesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() storiesLoading,
    required TResult Function(List<Story> story) storiesLoaded,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesLoaded(story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Story> story)? storiesLoaded,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesLoaded?.call(story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storiesLoading,
    TResult Function(List<Story> story)? storiesLoaded,
    TResult Function(String errorMessage)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesLoaded != null) {
      return storiesLoaded(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoaded implements StoriesState {
  const factory _StoriesLoaded(final List<Story> story) = _$StoriesLoadedImpl;

  List<Story> get story;
  @JsonKey(ignore: true)
  _$$StoriesLoadedImplCopyWith<_$StoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesErrorImpl>
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
    return 'StoriesState.storiesError(errorMessage: $errorMessage)';
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
    required TResult Function() storiesLoading,
    required TResult Function(List<Story> story) storiesLoaded,
    required TResult Function(String errorMessage) storiesError,
  }) {
    return storiesError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? storiesLoading,
    TResult? Function(List<Story> story)? storiesLoaded,
    TResult? Function(String errorMessage)? storiesError,
  }) {
    return storiesError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? storiesLoading,
    TResult Function(List<Story> story)? storiesLoaded,
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
    required TResult Function(_StoriesLoading value) storiesLoading,
    required TResult Function(_StoriesLoaded value) storiesLoaded,
    required TResult Function(_StoriesError value) storiesError,
  }) {
    return storiesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_StoriesLoading value)? storiesLoading,
    TResult? Function(_StoriesLoaded value)? storiesLoaded,
    TResult? Function(_StoriesError value)? storiesError,
  }) {
    return storiesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_StoriesLoading value)? storiesLoading,
    TResult Function(_StoriesLoaded value)? storiesLoaded,
    TResult Function(_StoriesError value)? storiesError,
    required TResult orElse(),
  }) {
    if (storiesError != null) {
      return storiesError(this);
    }
    return orElse();
  }
}

abstract class _StoriesError implements StoriesState {
  const factory _StoriesError(final String errorMessage) = _$StoriesErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$StoriesErrorImplCopyWith<_$StoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
