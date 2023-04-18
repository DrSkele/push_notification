import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotification {
  PushNotification._();

  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static init() async {
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('mipmap/ic_launcher');

    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future testNotification() async {
    const androidPlatform = AndroidNotificationDetails(
      'channel id',
      'channel name',
      channelDescription: 'channelDescription',
      importance: Importance.max,
      priority: Priority.max,
    );

    const platformDetails = NotificationDetails(android: androidPlatform);

    await flutterLocalNotificationsPlugin
        .show(0, 'title', 'body', platformDetails, payload: 'item');
  }
}
