// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientsList _$IngredientsListFromJson(Map<String, dynamic> json) {
  return _IngredientsList.fromJson(json);
}

/// @nodoc
mixin _$IngredientsList {
  List<Ingredients> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsListCopyWith<IngredientsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsListCopyWith<$Res> {
  factory $IngredientsListCopyWith(
          IngredientsList value, $Res Function(IngredientsList) then) =
      _$IngredientsListCopyWithImpl<$Res, IngredientsList>;
  @useResult
  $Res call({List<Ingredients> results});
}

/// @nodoc
class _$IngredientsListCopyWithImpl<$Res, $Val extends IngredientsList>
    implements $IngredientsListCopyWith<$Res> {
  _$IngredientsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsListCopyWith<$Res>
    implements $IngredientsListCopyWith<$Res> {
  factory _$$_IngredientsListCopyWith(
          _$_IngredientsList value, $Res Function(_$_IngredientsList) then) =
      __$$_IngredientsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredients> results});
}

/// @nodoc
class __$$_IngredientsListCopyWithImpl<$Res>
    extends _$IngredientsListCopyWithImpl<$Res, _$_IngredientsList>
    implements _$$_IngredientsListCopyWith<$Res> {
  __$$_IngredientsListCopyWithImpl(
      _$_IngredientsList _value, $Res Function(_$_IngredientsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_IngredientsList(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientsList
    with DiagnosticableTreeMixin
    implements _IngredientsList {
  const _$_IngredientsList({required final List<Ingredients> results})
      : _results = results;

  factory _$_IngredientsList.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientsListFromJson(json);

  final List<Ingredients> _results;
  @override
  List<Ingredients> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IngredientsList(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IngredientsList'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsList &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsListCopyWith<_$_IngredientsList> get copyWith =>
      __$$_IngredientsListCopyWithImpl<_$_IngredientsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientsListToJson(
      this,
    );
  }
}

abstract class _IngredientsList implements IngredientsList {
  const factory _IngredientsList({required final List<Ingredients> results}) =
      _$_IngredientsList;

  factory _IngredientsList.fromJson(Map<String, dynamic> json) =
      _$_IngredientsList.fromJson;

  @override
  List<Ingredients> get results;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsListCopyWith<_$_IngredientsList> get copyWith =>
      throw _privateConstructorUsedError;
}
