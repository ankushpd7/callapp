import 'package:sms_advanced/sms_advanced.dart';

class SMSService {
  static Future<List<SmsMessage>> fetchAllSms() async {
    SmsQuery query = SmsQuery();
    List<SmsMessage> messages = await query.getAllSms;
    return messages;
  }
}
