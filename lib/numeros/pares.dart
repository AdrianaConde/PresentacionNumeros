import 'package:flutter/material.dart';

class ParesPage extends StatefulWidget {
  ParesPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ParesPage createState() => _ParesPage();
}

class _ParesPage extends State<ParesPage> {
  static int _counter = 0;
  static int _numer = 0;
  static List _lista = [];
  void _incrementCounter() {
    setState(() {
      _counter += 2;
      _numer++;
    });
    _lista[_numer]= '$_counter\n';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orangeAccent[100],
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          _list(),
        ],
      ),
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView.separated(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) =>
            _item("El numero presentado es:  " ),
          separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.orange.withOpacity(0.15),
            height: 7.0,
          );
        },
      ),
    );
  }
  
  Widget _item(String name) {
    return ListTile(
      title: Text(name,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),
      ),
      subtitle: Text("Posicion $_numer",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.blueGrey,
        ),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.orangeAccent[200].withOpacity(0.3),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("$_counter",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
