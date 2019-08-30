import 'package:flutter/material.dart';

import 'package:clase_1/numeros/factoriales.dart';
import 'package:clase_1/numeros/impares.dart';
import 'package:clase_1/numeros/pares.dart';
import 'package:clase_1/numeros/primos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Flutter Code Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    
  int _selectedIndex = 0;
  Widget callPage (int currentIndex){
    switch(currentIndex){
      case 0: return ParesPage();
        break;
      case 1: return ImparesPage();
        break;
      case 2: return PrimosPage();
        break;
      case 3: return FactorialesPage();
        break;
      default: return ParesPage();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presentacion de numeros'),
      ),
      body: Center(
        child: callPage(_selectedIndex)//elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: 
        [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Pares'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Impares'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Primo'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Factorial'),
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (value){
          _selectedIndex=value;
          setState(() {
          });
        },
      ),
    );
  }
}

