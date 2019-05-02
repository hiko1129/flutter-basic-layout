import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts Page'),
      ),
      body: Center(
        child: Text(
          'Contacts Page',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
