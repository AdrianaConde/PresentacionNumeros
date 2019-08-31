import 'package:flutter/material.dart';
class FactorialesPage extends StatefulWidget {
  FactorialesPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FactorialesPage createState() =>_FactorialesPage();
}

class _FactorialesPage extends State <FactorialesPage>{
  static int _counter=0;
  static int _numer=0;
  void _incrementFactCounter(){
    setState((){
      var _sum=_numer+1;
      if (_counter!=0) {
        _counter*=_sum;
      } else {
        _counter++;
      }
      _numer++;
    });
  }
  @override
 Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.purpleAccent[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'factorial: $_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Numero de factorial $_numer ',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementFactCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}