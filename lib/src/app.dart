import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import './models/json_model.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int idInt = 0;

  myClickFloating() async {
    print('You Click Floating');
    idInt += 1;
    print('idInt = $idInt');

    var response = await get('http://androidthai.in.th/sun/getFoodWhereIdOil.php?isAdd=true&id=$idInt');
    var converted = json.decode(response.body);
    print('converted ==> $converted');

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun food',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sun food'),
          leading: Icon(Icons.fastfood),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_shopping_cart),
          onPressed: () {
            myClickFloating();
          },
        ),
        body: Text('idInt = $idInt'),
      ),
    );
  }
}
