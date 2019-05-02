import 'package:flutter/material.dart';

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmarks Page'),
      ),
      body: Center(
        child: Text(
          'Bookmarks Page',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
