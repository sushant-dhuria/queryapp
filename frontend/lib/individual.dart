import 'package:flutter/material.dart';

void main() => runApp(Individual());

class Individual extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({Key key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Machine Learning Queries"),
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10.0),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: ListTile(
                  leading: Icon(Icons.ads_click),
                  title:
                      Text('how to derive cost function in linear regression'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.blue,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: ListTile(
                  leading: Icon(Icons.ads_click),
                  title:
                      Text('how to derive cost function in linear regression'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.blue,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: ListTile(
                  leading: Icon(Icons.ads_click),
                  title:
                      Text('how to derive cost function in linear regression'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.blue,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
                child: ListTile(
                  leading: Icon(Icons.ads_click),
                  title:
                      Text('how to derive cost function in linear regression'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  tileColor: Colors.blue,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
            ],
          )),
    );
  }
}
