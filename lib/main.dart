import 'package:flutter_web/material.dart';
import 'package:flutter_basic_layout/bookmarks_page.dart';
import 'package:flutter_basic_layout/contacts_page.dart';
import 'package:flutter_basic_layout/favorite_tab.dart';
import 'package:flutter_basic_layout/home_tab.dart';
import 'package:flutter_basic_layout/post_page.dart';
import 'package:flutter_basic_layout/search_tab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/contacts': (context) => ContactsPage(),
        '/bookmarks': (context) => BookmarksPage(),
        '/posts/new': (context) => PostPage()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _tabs = [HomeTab(), SearchTab(), FavoriteTab()];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic Layout'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/contacts');
              },
              title: Row(
                children: <Widget>[
                  Icon(
                    Icons.people,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Contacts',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/bookmarks');
              },
              title: Row(
                children: <Widget>[
                  Icon(
                    Icons.bookmark,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Bookmarks',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) => {
              setState(() => {_currentIndex = i})
            },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {Navigator.pushNamed(context, '/posts/new')}),
    );
  }
}
