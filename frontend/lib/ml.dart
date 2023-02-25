// ignore_for_file: deprecated_member_use

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/individual.dart';
import 'package:frontend/writepost.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/query.dart';

void main() => runApp(ML());

class ML extends StatelessWidget {
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
  List<Query> _queriesml = [];
  Future<List<Query>> fetchjson() async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var res = await http.get("http://localhost:8080/queriesml");
    // print(res.body);
    List<Query> queriesml = [];
    if (res.statusCode == 200) {
      var queriesjson = json.decode(res.body);
      for (var queryjson in queriesjson) {
        queriesml.add(Query.fromJson(queryjson));
      }
    }
    return queriesml;
  }

  void initState() {
    fetchjson().then((value) {
      setState(() {
        _queriesml.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => Writepost()));
        },
        icon: const Icon(Icons.edit),
        label: const Text('Write Query'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("Machine Learning Queries"),
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Container(
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
                          onTap: () => {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => Individual())),
                          },
                          leading: Icon(Icons.ads_click),
                          title: Text(_queriesml[index].q.toString()),
                          trailing: Icon(Icons.arrow_forward_ios),
                          tileColor: Colors.blue,
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),
                    ],
                  ));
            },
            itemCount: _queriesml.length,
          ),
        ),
      ),
    );
  }
  // );
}
// }
