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
  static var _list = '';
  void _incrementImparCounter(){
    setState((){
      if(_counter!=0){
      _counter+=2;
      }else{
        _counter++;
      }
      _numer++;
    });
    _list+= '$_numer)Numero Presentado: $_counter\n';
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
            Text('$_list'),
            Text(
              'Numero impar: $_counter',
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