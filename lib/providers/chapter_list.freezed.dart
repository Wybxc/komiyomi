// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterListOptions {
  Enum$ChapterOrderBy? get orderBy => throw _privateConstructorUsedError;
  Enum$SortOrder? get orderByType => throw _privateConstructorUsedError;

  /// Create a copy of ChapterListOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterListOptionsCopyWith<ChapterListOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterListOptionsCopyWith<$Res> {
  factory $ChapterListOptionsCopyWith(
          ChapterListOptions value, $Res Function(ChapterListOptions) then) =
      _$ChapterListOptionsCopyWithImpl<$Res, ChapterListOptions>;
  @useResult
  $Res call({Enum$ChapterOrderBy? orderBy, Enum$SortOrder? orderByType});
}

/// @nodoc
class _$ChapterListOptionsCopyWithImpl<$Res, $Val extends ChapterListOptions>
    implements $ChapterListOptionsCopyWith<$Res> {
  _$ChapterListOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterListOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = freezed,
    Object? orderByType = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as Enum$ChapterOrderBy?,
      orderByType: freezed == orderByType
          ? _value.orderByType
          : orderByType // ignore: cast_nullable_to_non_nullable
              as Enum$SortOrder?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterListOptionsImplCopyWith<$Res>
    implements $ChapterListOptionsCopyWith<$Res> {
  factory _$$ChapterListOptionsImplCopyWith(_$ChapterListOptionsImpl value,
          $Res Function(_$ChapterListOptionsImpl) then) =
      __$$ChapterListOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Enum$ChapterOrderBy? orderBy, Enum$SortOrder? orderByType});
}

/// @nodoc
class __$$ChapterListOptionsImplCopyWithImpl<$Res>
    extends _$ChapterListOptionsCopyWithImpl<$Res, _$ChapterListOptionsImpl>
    implements _$$ChapterListOptionsImplCopyWith<$Res> {
  __$$ChapterListOptionsImplCopyWithImpl(_$ChapterListOptionsImpl _value,
      $Res Function(_$ChapterListOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterListOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = freezed,
    Object? orderByType = freezed,
  }) {
    return _then(_$ChapterListOptionsImpl(
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as Enum$ChapterOrderBy?,
      orderByType: freezed == orderByType
          ? _value.orderByType
          : orderByType // ignore: cast_nullable_to_non_nullable
              as Enum$SortOrder?,
    ));
  }
}

/// @nodoc

class _$ChapterListOptionsImpl implements _ChapterListOptions {
  const _$ChapterListOptionsImpl(
      {this.orderBy = Enum$ChapterOrderBy.CHAPTER_NUMBER,
      this.orderByType = Enum$SortOrder.DESC});

  @override
  @JsonKey()
  final Enum$ChapterOrderBy? orderBy;
  @override
  @JsonKey()
  final Enum$SortOrder? orderByType;

  @override
  String toString() {
    return 'ChapterListOptions(orderBy: $orderBy, orderByType: $orderByType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterListOptionsImpl &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.orderByType, orderByType) ||
                other.orderByType == orderByType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderBy, orderByType);

  /// Create a copy of ChapterListOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterListOptionsImplCopyWith<_$ChapterListOptionsImpl> get copyWith =>
      __$$ChapterListOptionsImplCopyWithImpl<_$ChapterListOptionsImpl>(
          this, _$identity);
}

abstract class _ChapterListOptions implements ChapterListOptions {
  const factory _ChapterListOptions(
      {final Enum$ChapterOrderBy? orderBy,
      final Enum$SortOrder? orderByType}) = _$ChapterListOptionsImpl;

  @override
  Enum$ChapterOrderBy? get orderBy;
  @override
  Enum$SortOrder? get orderByType;

  /// Create a copy of ChapterListOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterListOptionsImplCopyWith<_$ChapterListOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
