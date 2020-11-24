import 'package:flutter/material.dart';
import 'LocalNotifiyManager.dart';

class TestNotification extends StatefulWidget {

  @override
  _TestNotificationState createState() => _TestNotificationState();
}

class _TestNotificationState extends State<TestNotification> {

  @override
  void initState() {
    super.initState();
    localNotifiyManager.setNotificationReceive(onNotificationReceive);
    localNotifiyManager.setNotificationClick(onNotificationClick);
  }

  onNotificationReceive(ReceiveNotification notification){
    print('Payload ${notification.id}');
  }
  onNotificationClick(String payload){
    print('Payload $payload');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Notification'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () async{
            await localNotifiyManager.showNotification();
          }, 
          child: Text('Send Notification')
        ),
      ),
    );
  }
}