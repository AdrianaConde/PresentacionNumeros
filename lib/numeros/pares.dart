import 'package:flutter/material.dart';
class ParesPage extends StatefulWidget {
  ParesPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ParesPage createState() => _ParesPage();
}

class _ParesPage extends State <ParesPage> {
  static int _counter=0;
  static int _numer=0;
  static var lista ='';
  void _incrementCounter(){
    setState((){
      _counter+=2;
      _numer++;
    });
    lista+=' Numero Presentado:$_counter\n';
  }
  @override
 Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$lista',
            ),
            Text(
              'Numero Par: $_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Posicion en la que se encuentra $_numer',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
