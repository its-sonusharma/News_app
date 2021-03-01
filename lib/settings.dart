import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}
class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.blueGrey[600],
        centerTitle: true,
      ),
      body:ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.rate_review_outlined),
              title: Text('Rate App'),/*
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutme()),
                );
              },*/
              hoverColor: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text('Share App'),/*
              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutme()),
                );
              },*/
              hoverColor: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.feedback_rounded),
              title: Text('Feedback'),
/*              onLongPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutme()),
                );
              },*/
              hoverColor: Colors.green,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('About App'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutme()),
                );
              },
              hoverColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class Aboutme extends StatefulWidget {
  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Developer'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tech2.jpg'),
                radius: 150.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              ' SONU SHARMA ',
              style: TextStyle(
                color: Colors.teal[900],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.teal[900],
                ),
                SizedBox(width: 10.0),
                Text(
                  'Sonutest20@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Text(
                  'I just made this app for demo purpose so for any dought feel free to ask',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
