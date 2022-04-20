import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Mayanda Flutter',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      // A widget which will be started on application startup
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(color: Colors.blueAccent),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded),
          onPressed: () => Navigator.pop(context),
          color: Colors.blueAccent,
        ),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List names = [
    "Adidas",
    "Nike",
    "Puma"
  ];
  List jenis = [
    "A-011",
    "N-073",
    "P-047"
  ];
  List stok = [
    "3",
    "7",
    "4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                color: Colors.blueGrey[50],
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 66.0,
                              height: 88.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.blueGrey[50],
                                foregroundColor: Colors.blueGrey[50],
                                backgroundImage: NetworkImage("https://www.mancing.id/wp-content/uploads/2019/10/Sepatu-Sneaker-Pria-Keren-yang-Ada-Di-Dunia.png"),
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                              Text(
                                names[index],
                                style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                              Text(jenis[index], style: TextStyle(color: Colors.black)),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                                child: FlatButton(
                                  onPressed: () {},
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text("Stock " + stok[index], style: TextStyle(color: Colors.white)),
                                ),
                              )
                            ]),
                          ],
                        ),
                        Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: Icon(
                              Icons.delete,
                              size: 30.0,
                              color: Colors.red,
                            ))
                      ],
                    )),
              ))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('New Product'),
        icon: const Icon(Icons.add_shopping_cart_rounded),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
