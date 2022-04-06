// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

  _Initial call(
      {String name = '',
      String address = '',
      int? distance,
      int? minPrice,
      double? avgRating,
      int? reviewsNumber,
      String imageAsset = '',
      String backgroundAsset = ''}) {
    return _Initial(
      name: name,
      address: address,
      distance: distance,
      minPrice: minPrice,
      avgRating: avgRating,
      reviewsNumber: reviewsNumber,
      imageAsset: imageAsset,
      backgroundAsset: backgroundAsset,
    );
  }
}

/// @nodoc
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  double? get avgRating => throw _privateConstructorUsedError;
  int? get reviewsNumber => throw _privateConstructorUsedError;
  String get imageAsset => throw _privateConstructorUsedError;
  String get backgroundAsset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      int? distance,
      int? minPrice,
      double? avgRating,
      int? reviewsNumber,
      String imageAsset,
      String backgroundAsset});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? minPrice = freezed,
    Object? avgRating = freezed,
    Object? reviewsNumber = freezed,
    Object? imageAsset = freezed,
    Object? backgroundAsset = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsNumber: reviewsNumber == freezed
          ? _value.reviewsNumber
          : reviewsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundAsset: backgroundAsset == freezed
          ? _value.backgroundAsset
          : backgroundAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      int? distance,
      int? minPrice,
      double? avgRating,
      int? reviewsNumber,
      String imageAsset,
      String backgroundAsset});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? minPrice = freezed,
    Object? avgRating = freezed,
    Object? reviewsNumber = freezed,
    Object? imageAsset = freezed,
    Object? backgroundAsset = freezed,
  }) {
    return _then(_Initial(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsNumber: reviewsNumber == freezed
          ? _value.reviewsNumber
          : reviewsNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundAsset: backgroundAsset == freezed
          ? _value.backgroundAsset
          : backgroundAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.name = '',
      this.address = '',
      this.distance,
      this.minPrice,
      this.avgRating,
      this.reviewsNumber,
      this.imageAsset = '',
      this.backgroundAsset = ''});

  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String address;
  @override
  final int? distance;
  @override
  final int? minPrice;
  @override
  final double? avgRating;
  @override
  final int? reviewsNumber;
  @JsonKey()
  @override
  final String imageAsset;
  @JsonKey()
  @override
  final String backgroundAsset;

  @override
  String toString() {
    return 'Place(name: $name, address: $address, distance: $distance, minPrice: $minPrice, avgRating: $avgRating, reviewsNumber: $reviewsNumber, imageAsset: $imageAsset, backgroundAsset: $backgroundAsset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.minPrice, minPrice) &&
            const DeepCollectionEquality().equals(other.avgRating, avgRating) &&
            const DeepCollectionEquality()
                .equals(other.reviewsNumber, reviewsNumber) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.backgroundAsset, backgroundAsset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(minPrice),
      const DeepCollectionEquality().hash(avgRating),
      const DeepCollectionEquality().hash(reviewsNumber),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(backgroundAsset));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements Place {
  const factory _Initial(
      {String name,
      String address,
      int? distance,
      int? minPrice,
      double? avgRating,
      int? reviewsNumber,
      String imageAsset,
      String backgroundAsset}) = _$_Initial;

  @override
  String get name;
  @override
  String get address;
  @override
  int? get distance;
  @override
  int? get minPrice;
  @override
  double? get avgRating;
  @override
  int? get reviewsNumber;
  @override
  String get imageAsset;
  @override
  String get backgroundAsset;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
