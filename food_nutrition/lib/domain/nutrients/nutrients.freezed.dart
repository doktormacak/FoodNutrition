// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrients _$NutrientsFromJson(Map<String, dynamic> json) {
  return _Nutrients.fromJson(json);
}

/// @nodoc
mixin _$Nutrients {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get percentOfDailyNeeds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientsCopyWith<Nutrients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientsCopyWith<$Res> {
  factory $NutrientsCopyWith(Nutrients value, $Res Function(Nutrients) then) =
      _$NutrientsCopyWithImpl<$Res, Nutrients>;
  @useResult
  $Res call(
      {String name, double amount, String unit, double percentOfDailyNeeds});
}

/// @nodoc
class _$NutrientsCopyWithImpl<$Res, $Val extends Nutrients>
    implements $NutrientsCopyWith<$Res> {
  _$NutrientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
    Object? percentOfDailyNeeds = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfDailyNeeds: null == percentOfDailyNeeds
          ? _value.percentOfDailyNeeds
          : percentOfDailyNeeds // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientsCopyWith<$Res> implements $NutrientsCopyWith<$Res> {
  factory _$$_NutrientsCopyWith(
          _$_Nutrients value, $Res Function(_$_Nutrients) then) =
      __$$_NutrientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, double amount, String unit, double percentOfDailyNeeds});
}

/// @nodoc
class __$$_NutrientsCopyWithImpl<$Res>
    extends _$NutrientsCopyWithImpl<$Res, _$_Nutrients>
    implements _$$_NutrientsCopyWith<$Res> {
  __$$_NutrientsCopyWithImpl(
      _$_Nutrients _value, $Res Function(_$_Nutrients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
    Object? percentOfDailyNeeds = null,
  }) {
    return _then(_$_Nutrients(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      percentOfDailyNeeds: null == percentOfDailyNeeds
          ? _value.percentOfDailyNeeds
          : percentOfDailyNeeds // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrients with DiagnosticableTreeMixin implements _Nutrients {
  const _$_Nutrients(
      {required this.name,
      required this.amount,
      required this.unit,
      required this.percentOfDailyNeeds});

  factory _$_Nutrients.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientsFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final String unit;
  @override
  final double percentOfDailyNeeds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Nutrients(name: $name, amount: $amount, unit: $unit, percentOfDailyNeeds: $percentOfDailyNeeds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Nutrients'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('percentOfDailyNeeds', percentOfDailyNeeds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrients &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.percentOfDailyNeeds, percentOfDailyNeeds) ||
                other.percentOfDailyNeeds == percentOfDailyNeeds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, amount, unit, percentOfDailyNeeds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutrientsCopyWith<_$_Nutrients> get copyWith =>
      __$$_NutrientsCopyWithImpl<_$_Nutrients>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientsToJson(
      this,
    );
  }
}

abstract class _Nutrients implements Nutrients {
  const factory _Nutrients(
      {required final String name,
      required final double amount,
      required final String unit,
      required final double percentOfDailyNeeds}) = _$_Nutrients;

  factory _Nutrients.fromJson(Map<String, dynamic> json) =
      _$_Nutrients.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  String get unit;
  @override
  double get percentOfDailyNeeds;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientsCopyWith<_$_Nutrients> get copyWith =>
      throw _privateConstructorUsedError;
}
