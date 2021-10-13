import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class SimpleNotification {
  BuildContext context;
  late FlutterLocalNotificationsPlugin notification;

  SimpleNotification(this.context) {
    tz.initializeTimeZones();
    initNotification();
  }

  //initialize notification
  initNotification() {
    notification = FlutterLocalNotificationsPlugin();
    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    IOSInitializationSettings iOSInitializationSettings =
        IOSInitializationSettings();

    InitializationSettings initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iOSInitializationSettings);

    notification.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  Future<String?> selectNotification(String? payload) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text("Notification Clicked"),
              content: Text("You clicked the notification."),
            ));
  }

  Future showNotification() async {
    var android = AndroidNotificationDetails(
        "channelId", "channelName", "This is a simple notification",
        priority: Priority.high, importance: Importance.max, showWhen: false);
    var platformDetails = NotificationDetails(android: android);
    await notification.show(100, "Simple Notification",
        "This is a simple notification", platformDetails,
        payload: "a demo payload");
  }

  Future showScheduledNotification() async {
    var android = AndroidNotificationDetails(
        "channelId", "channelName", "This is a simple notification",
        priority: Priority.high, importance: Importance.max);
    var platformDetails = NotificationDetails(android: android);
    await notification.zonedSchedule(
        101,
        "Scheduled Notification",
        "This is a sample scheduled notification",
        tz.TZDateTime.from(DateTime.now(), tz.local)
            .add(const Duration(seconds: 5)),
        platformDetails,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }

  Future showDailyScheduledNotification() async {
    var android = AndroidNotificationDetails(
        "channelId", "channelName", "This is a simple notification",
        priority: Priority.high, importance: Importance.max);
    var platformDetails = NotificationDetails(android: android);
    print("Daily Notification Scheduled");
    await notification.periodicallyShow(
      102,
      "Daily Scheduled",
      "This is a daily scheduled notification",
      RepeatInterval.daily,
      platformDetails,
    );
    viewPendingNotifications();
  }

  Future viewPendingNotifications() async {
    var pendingNotificationRequests =
        await notification.pendingNotificationRequests();

    pendingNotificationRequests.forEach((element) {
      print(element.id);
    });
  }
}
