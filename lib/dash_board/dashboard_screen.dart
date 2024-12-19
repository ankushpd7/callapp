import 'package:flutter/material.dart';
import 'package:pro/call/call_log_screen.dart';
import 'package:pro/contact/contact_screen.dart';
import 'package:pro/sms/sms_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CallLogScreen();
                }));
              },
              child: Text('Call Logs')),
          SizedBox(height: 16,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContactScreen();
                }));
              },
              child: Text('Contacts')),
          SizedBox(height: 16,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SMSScreen();
                }));
              },
              child: Text('SMS'))
        ],
      ),
    );
  }
}
