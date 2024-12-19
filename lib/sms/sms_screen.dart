import 'package:flutter/material.dart';
import 'package:sms_advanced/sms_advanced.dart';
import 'package:pro/sms/sms_service.dart';

class SMSScreen extends StatefulWidget {
  const SMSScreen({super.key});

  @override
  State<SMSScreen> createState() => _SMSScreenState();
}

class _SMSScreenState extends State<SMSScreen> {
  List<SmsMessage> smsMsgList = [];

  @override
  void initState() {
    fetchMessages();
    super.initState();
  }

  Future fetchMessages() async {
    smsMsgList = await SMSService.fetchAllSms();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SMS'),
      ),
      body: Padding(padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: smsMsgList.length,
            itemBuilder: (context,index){
              SmsMessage message =smsMsgList[index];
              return ListTile(
                title: Text(message.sender??'Unknown'),
                subtitle: Text(message.body?.toString()??'Not available'),
              );
            }),
      ),
    );
  }
}
