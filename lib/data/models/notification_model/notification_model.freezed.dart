// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationModelTearOff {
  const _$NotificationModelTearOff();

  _Initial call(
      {int? orderNumber,
      String? messageText,
      NotificationType notificationType = NotificationType.orderStatusChanged,
      DateTime? time}) {
    return _Initial(
      orderNumber: orderNumber,
      messageText: messageText,
      notificationType: notificationType,
      time: time,
    );
  }
}

/// @nodoc
const $NotificationModel = _$NotificationModelTearOff();

/// @nodoc
mixin _$NotificationModel {
  int? get orderNumber => throw _privateConstructorUsedError;
  String? get messageText => throw _privateConstructorUsedError;
  NotificationType get notificationType => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res>;
  $Res call(
      {int? orderNumber,
      String? messageText,
      NotificationType notificationType,
      DateTime? time});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  final NotificationModel _value;
  // ignore: unused_field
  final $Res Function(NotificationModel) _then;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? messageText = freezed,
    Object? notificationType = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? orderNumber,
      String? messageText,
      NotificationType notificationType,
      DateTime? time});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotificationModelCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? orderNumber = freezed,
    Object? messageText = freezed,
    Object? notificationType = freezed,
    Object? time = freezed,
  }) {
    return _then(_Initial(
      orderNumber: orderNumber == freezed
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      messageText: messageText == freezed
          ? _value.messageText
          : messageText // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationType: notificationType == freezed
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.orderNumber,
      this.messageText,
      this.notificationType = NotificationType.orderStatusChanged,
      this.time});

  @override
  final int? orderNumber;
  @override
  final String? messageText;
  @JsonKey()
  @override
  final NotificationType notificationType;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'NotificationModel(orderNumber: $orderNumber, messageText: $messageText, notificationType: $notificationType, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.orderNumber, orderNumber) &&
            const DeepCollectionEquality()
                .equals(other.messageText, messageText) &&
            const DeepCollectionEquality()
                .equals(other.notificationType, notificationType) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderNumber),
      const DeepCollectionEquality().hash(messageText),
      const DeepCollectionEquality().hash(notificationType),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements NotificationModel {
  const factory _Initial(
      {int? orderNumber,
      String? messageText,
      NotificationType notificationType,
      DateTime? time}) = _$_Initial;

  @override
  int? get orderNumber;
  @override
  String? get messageText;
  @override
  NotificationType get notificationType;
  @override
  DateTime? get time;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
