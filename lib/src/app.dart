import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int idInt = 0;
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
            setState(() {
              print('You Click Floating');
              idInt += 1;
              print('idInt = $idInt');
            });
          },
        ),
        body: Text('idInt = $idInt'),
      ),
    );
  }
}
