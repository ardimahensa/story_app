// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_visibility_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordVisibilityState {
  bool get toggle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool toggle) toggleVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool toggle)? toggleVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool toggle)? toggleVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleVisibility value) toggleVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordVisibilityStateCopyWith<PasswordVisibilityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordVisibilityStateCopyWith<$Res> {
  factory $PasswordVisibilityStateCopyWith(PasswordVisibilityState value,
          $Res Function(PasswordVisibilityState) then) =
      _$PasswordVisibilityStateCopyWithImpl<$Res, PasswordVisibilityState>;
  @useResult
  $Res call({bool toggle});
}

/// @nodoc
class _$PasswordVisibilityStateCopyWithImpl<$Res,
        $Val extends PasswordVisibilityState>
    implements $PasswordVisibilityStateCopyWith<$Res> {
  _$PasswordVisibilityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggle = null,
  }) {
    return _then(_value.copyWith(
      toggle: null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleVisibilityImplCopyWith<$Res>
    implements $PasswordVisibilityStateCopyWith<$Res> {
  factory _$$ToggleVisibilityImplCopyWith(_$ToggleVisibilityImpl value,
          $Res Function(_$ToggleVisibilityImpl) then) =
      __$$ToggleVisibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool toggle});
}

/// @nodoc
class __$$ToggleVisibilityImplCopyWithImpl<$Res>
    extends _$PasswordVisibilityStateCopyWithImpl<$Res, _$ToggleVisibilityImpl>
    implements _$$ToggleVisibilityImplCopyWith<$Res> {
  __$$ToggleVisibilityImplCopyWithImpl(_$ToggleVisibilityImpl _value,
      $Res Function(_$ToggleVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggle = null,
  }) {
    return _then(_$ToggleVisibilityImpl(
      null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleVisibilityImpl implements _ToggleVisibility {
  const _$ToggleVisibilityImpl(this.toggle);

  @override
  final bool toggle;

  @override
  String toString() {
    return 'PasswordVisibilityState.toggleVisibility(toggle: $toggle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleVisibilityImpl &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toggle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleVisibilityImplCopyWith<_$ToggleVisibilityImpl> get copyWith =>
      __$$ToggleVisibilityImplCopyWithImpl<_$ToggleVisibilityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool toggle) toggleVisibility,
  }) {
    return toggleVisibility(toggle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool toggle)? toggleVisibility,
  }) {
    return toggleVisibility?.call(toggle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool toggle)? toggleVisibility,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(toggle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleVisibility value) toggleVisibility,
  }) {
    return toggleVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
  }) {
    return toggleVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggleVisibility implements PasswordVisibilityState {
  const factory _ToggleVisibility(final bool toggle) = _$ToggleVisibilityImpl;

  @override
  bool get toggle;
  @override
  @JsonKey(ignore: true)
  _$$ToggleVisibilityImplCopyWith<_$ToggleVisibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
