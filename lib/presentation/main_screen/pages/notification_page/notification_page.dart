import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../data/fake_data.dart';
import '../../../../data/models/notification_model/notification_model.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: const [
            NotificationPageListNotifications(),
            NotificationPageSearch(),
          ],
        ),
      ),
    );
  }
}

class NotificationPageListNotifications extends StatelessWidget {
  const NotificationPageListNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listNotifications.length,
        itemBuilder: (context, index) {
          return NotificationPageNotificationItem(
              notification: listNotifications[index]);
        });
  }
}

class NotificationPageNotificationItem extends StatefulWidget {
  const NotificationPageNotificationItem({Key? key, required this.notification})
      : super(key: key);

  final NotificationModel notification;

  @override
  State<NotificationPageNotificationItem> createState() => _NotificationPageNotificationItemState();
}

class _NotificationPageNotificationItemState extends State<NotificationPageNotificationItem> {

  IconData? iconData;
  String? notificationMessage;
  String? actionMessage;

  @override
  Widget build(BuildContext context) {
    switch (widget.notification.notificationType) {
      case NotificationType.placeHasNewDishes:
        iconData = Icons.favorite;
        notificationMessage =
            'У вашего избранного места появилась новая категория блюд';
        actionMessage = 'Перейти в карточку места';
        break;
      case NotificationType.orderStatusChanged:
        iconData = Icons.timelapse;
        notificationMessage = 'Изменился статус заказа ';
        actionMessage = 'Перейти в заказ';
        break;
      case NotificationType.newMessageInOrder:
        iconData = Icons.message;
        notificationMessage = 'Новое сообщение в заказе';
        actionMessage = 'Перейти в заказ';
        break;
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
                child: Icon(
                  iconData ?? Icons.timelapse,
                  size: 25,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat('kk:mm')
                    .format(widget.notification.time ?? DateTime.now())),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    children: [
                      Expanded(child: Text(notificationMessage ?? '')),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                if(widget.notification.messageText != null)
                  Container(
                    padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Text(widget.notification.messageText!)),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      actionMessage ?? '',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NotificationPageSearch extends StatelessWidget {
  const NotificationPageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25.0),
      elevation: 5,
      child: Container(
        margin:
            const EdgeInsets.only(left: 25, top: 12.5, bottom: 12.5, right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Flexible(
                child: TextField(
              style: Theme.of(context).textTheme.bodyText2,
              decoration: const InputDecoration(
                hintText: 'Поиск по номеру заказа',
                hintStyle: TextStyle(color: Colors.grey),
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
