import 'package:flutter/material.dart';
class ImparesPage extends StatefulWidget {
  ImparesPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ImparesPage createState() => _ImparesPage();
}

class _ImparesPage extends State <ImparesPage>{
  static int _counter=0;
  static int _numer=0;
  void _incrementImparCounter(){
    setState((){
      if(_counter!=0){
      _counter+=2;
      }else{
        _counter++;
      }
      _numer++;
    });
  }
  @override
 Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero impar: $_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Posicion en  la que se encuentra $_numer',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementImparCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}