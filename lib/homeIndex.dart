import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeIndex extends StatefulWidget {
  @override
  _HomeIndexState createState() => _HomeIndexState();
}
class _HomeIndexState extends State<HomeIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        backgroundColor:Colors.blueGrey[600],
      ),
      body:ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/ind.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/national.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/pol.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/Sports.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/tech4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              height: 550,
              child: InkWell(
                splashColor: Colors.blueGrey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: Center(child: Text('“Two things are infinite: the universe and human stupidity; and Im not sure about the universe.”',
                          style:TextStyle(
                            fontSize:21,
                          ),
                          )),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('― Albert Einstein',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 190,
                          width: 190,
                          child: Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.3),
                            ),
                            child: ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Technews()),
                             );
                             },
                              title: Center(
                                child: Text('Technology News',style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 190,
                          width: 190,
                          child: Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.3),
                            ),
                            child: ListTile(
                             onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Sportsnews()),
                             );
                             },
                              title: Center(
                                child: Text('Sports News',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 190,
                          width: 190,
                          child: Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.3),
                            ),
                            child: ListTile(
                                   onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Politicalnews()),
                             );
                            },
                              title: Center(
                                child: Text('Political News',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 190,
                          width: 190,
                          child: Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.3),
                            ),
                            child: ListTile(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Industrynews()),
                                  );
                                    },
                              title: Center(
                                child: Text('Industry News',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Technews extends StatefulWidget {
  @override
  _TechnewsState createState() => _TechnewsState();
}

class _TechnewsState extends State<Technews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technology News'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),body: WebView(
      initialUrl: 'https://www.indiatoday.in/technology',
      javascriptMode: JavascriptMode.unrestricted,
    ),
    );
  }
}

class Sportsnews extends StatefulWidget {
  @override
  _SportsnewsState createState() => _SportsnewsState();
}
class _SportsnewsState extends State<Sportsnews> {
  @override
  void initState(){
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports News'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),body: WebView(
      initialUrl: 'https://www.indiatoday.in/sports',
      javascriptMode: JavascriptMode.unrestricted,
    ),
    );
  }
}

class Politicalnews extends StatefulWidget {
  @override
  _PoliticalnewsState createState() => _PoliticalnewsState();
}

class _PoliticalnewsState extends State<Politicalnews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Political News'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),body: WebView(
      initialUrl: 'https://www.indiatoday.in/elections',
      javascriptMode: JavascriptMode.unrestricted,
    ),
    );
  }
}

class Industrynews extends StatefulWidget {
  @override
  _IndustrynewsState createState() => _IndustrynewsState();
}

class _IndustrynewsState extends State<Industrynews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Industry News'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600],
      ),
      body: WebView(
        initialUrl: 'https://www.indiatoday.in/trending-news',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
