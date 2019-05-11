import 'package:flutter_web/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: Center(
        child: Text(
          'Post Page',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
