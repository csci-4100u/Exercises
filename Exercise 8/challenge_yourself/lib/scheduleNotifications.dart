import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'notification.dart';

class ScheduleNotifications extends StatelessWidget {
  //ChangePassword(this.oldPassword);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Schedule Notifications"),
          centerTitle: true,
        ),
        body: ScheduleNotificationWidget());
  }
}

class ScheduleNotificationWidget extends StatefulWidget {
  const ScheduleNotificationWidget({Key? key}) : super(key: key);

  @override
  _ScheduleNotificationWidgetState createState() =>
      _ScheduleNotificationWidgetState();
}

class _ScheduleNotificationWidgetState
    extends State<ScheduleNotificationWidget> {
  List<String> schedules = ["Daily", "Weekly", "Monthly"];
  String selectedDate = "";
  String selectedTime = "";
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  late SimpleNotification notification;
  @override
  Widget build(BuildContext context) {
    notification = SimpleNotification(context);
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                './images/cricket.png',
                height: 250,
                width: 250,
              ),
              Card(
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    width: 370,
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Please select the options below to schedule notifications for changes to your league.",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            controller: _dateController,
                            decoration:
                                InputDecoration(labelText: "Select Date"),
                            showCursor: true,
                            readOnly: true,
                            onTap: () {
                              _showDatePicker(context);
                            },
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            controller: _timeController,
                            decoration:
                                InputDecoration(labelText: "Select Time"),
                            showCursor: true,
                            readOnly: true,
                            onTap: () {
                              _showTimePicker(context);
                            },
                          ),
                        ),
                        Container(
                          width: 250,
                          padding: EdgeInsets.only(left: 5, top: 15),
                          child: DropdownButton(
                            isExpanded: true,
                            value: "Daily",
                            items: schedules.map((schedule) {
                              return DropdownMenuItem(
                                  value: schedule, child: Text(schedule));
                            }).toList(),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            width: 350,
                            child: ElevatedButton.icon(
                                onPressed: () {
                                  notification.showDailyScheduledNotification();
                                },
                                icon: Icon(Icons.schedule),
                                label: Text("Schedule Notification")))
                      ],
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }

  _showDatePicker(BuildContext context) {
    final DateTime initialDate = DateTime.now();
    final DateTime firstDate = DateTime(2010);
    final DateTime lastDate = DateTime(2030);
    return showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    ).then((value) {
      setState(() {
        selectedDate = DateFormat("yyyy-MM-dd").format(value!);
        _dateController.text = selectedDate;
      });
    });
  }

  _showTimePicker(BuildContext context) {
    return showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.input)
        .then((value) {
      selectedTime =
          TimeOfDay(hour: value!.hour, minute: value.minute).format(context);
      _timeController.text = selectedTime;
    });
  }
}
