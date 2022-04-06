import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

enum NotificationType {
  placeHasNewDishes,
  orderStatusChanged,
  newMessageInOrder
}

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel(
      {int? orderNumber,
      String? messageText,
      @Default(NotificationType.orderStatusChanged)
          NotificationType notificationType,
        DateTime? time
      }) = _Initial;
}
