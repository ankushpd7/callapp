import 'package:flutter_contacts/flutter_contacts.dart';

class ContactService {
 static Future<List<Contact>> fetchContacts() async {
    if (await FlutterContacts.requestPermission()) {
      List<Contact> contacts =
          await FlutterContacts.getContacts(withProperties: true);
      return contacts;
    } else {
      print('Permission not granted');
      return [];
    }
  }
}
