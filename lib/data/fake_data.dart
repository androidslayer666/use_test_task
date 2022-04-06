import 'models/notification_model/notification_model.dart';
import 'models/place_model/place_model.dart';

const List<Place> listPlaces = [
  Place(
      name: 'Макдональдс',
      address: '1 этаж, Павильон 3',
      avgRating: 5.0,
      distance: 50,
      minPrice: 499,
      reviewsNumber: 3529,
      imageAsset: 'assets/images/mcdonalds-food.png',
      backgroundAsset: 'assets/images/mcdonalds-food1.png'),
  Place(
      name: 'Zara',
      address: 'Тц Императорский, 2й этаж',
      avgRating: null,
      distance: 155,
      minPrice: 499,
      reviewsNumber: null,
      imageAsset: 'assets/images/zara1.png',
      backgroundAsset: 'assets/images/best-worst-mcdonalds-food-31.png'),
  Place(
      name: 'Макдональдс',
      address: '1 этаж, Павильон 3',
      avgRating: 5.0,
      distance: 50,
      minPrice: 499,
      reviewsNumber: 3529,
      imageAsset: 'assets/images/mcdonalds-food.png',
      backgroundAsset: 'assets/images/mcdonalds-food1.png'),
];

final List<NotificationModel> listNotifications = [
  NotificationModel(
      notificationType: NotificationType.placeHasNewDishes,
      messageText: 'Макдональдс', time: DateTime.now()),
  NotificationModel(
      notificationType: NotificationType.orderStatusChanged,
      messageText: 'В работе -> Доставлен',
      orderNumber: 13124, time: DateTime.now()),
  NotificationModel(
      notificationType: NotificationType.newMessageInOrder,
      orderNumber: 13124, time: DateTime.now()),
  NotificationModel(
      notificationType: NotificationType.orderStatusChanged,
      messageText: 'Принят -> В работе',
      orderNumber: 13124, time: DateTime.now()),
];
