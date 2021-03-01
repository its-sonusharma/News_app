import 'package:flutter/material.dart';
import 'package:newz_app/models/newsinfo.dart';
import 'package:newz_app/services/api_services.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}
class _FeedState extends State<Feed> {
  Future <NewsModel> _newmodel;
  @override
  void initState(){
    _newmodel = Api_services().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Latest Updates'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),
      body:Container(
        child: FutureBuilder <NewsModel>(
          future: _newmodel,
          builder: (context,snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                   itemCount:snapshot.data.articles.length ,
                  itemBuilder: (context, index)
                  {
                    var articles = snapshot.data.articles[index];
                return Container(
                  width: 300,
                  height: 300,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: <Widget>[
                      Image.network(articles.urlToImage,
                        width: 500,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(articles.title, style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,)),
                            Text(articles.author, style: TextStyle(fontSize: 22,
                            color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
            }
           else
              return Center(child: CircularProgressIndicator());
          }
        ),
      ),
    );
  }
}
