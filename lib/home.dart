import 'package:flutter/material.dart';
import 'package:newz_app/feed.dart';
import 'package:newz_app/homeIndex.dart';
import 'package:newz_app/settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    HomeIndex(),
    Feed(),
    Settings()];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[600],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed),
          label:'News',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            label:'Settings',
          ),
        ],
      ),
    );
  }
}
