import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:pro/contact/contact_service.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Contact> contactList = [];

  @override
  void initState() {
    fetchContacts();
    super.initState();
  }

  Future fetchContacts() async {
    contactList = await ContactService.fetchContacts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context,index){
            Contact contact =contactList[index];
            return ListTile(
              title: Text(contact.displayName),
              subtitle: Text(contact.phones[0].toString()),
            );
          }),
      ),
    );
  }
}
