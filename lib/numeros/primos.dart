import 'package:flutter/material.dart';
class PrimosPage extends StatefulWidget {
    PrimosPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PrimosPage createState() =>_PrimosPage();
}

class _PrimosPage extends State <PrimosPage>{
  static int _primo=2;
  int _num=(_primo+1);
  int numP=1;
  static var _list = '1) Numero Presentado: 2';
  void _incrementPrimoCounter(){
    bool _numeroPrimo=false;
    while ( _numeroPrimo==false){
      if (_mostrarPrimo(_num)==true) {
        _numeroPrimo=true;
        setState((){ 
          _primo=_num;
          numP++;
        });
      }
      _num++;
    }
    _list+= '$numP)Numero Presentado: $_primo\n';
  }
  bool _mostrarPrimo(int _num){
    int _cont=0;
      for(int i=1;i<=(_num+1);i++){
        if(_num%i==0){
          _cont++;
        }
      }
      if(_cont==2){
        return true;
      }else{
        return false;
      }
  }

  @override
 Widget build(BuildContext context) {
    return
    Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_list'),
            Text(
              'Numero Primo: $_primo',
              style: Theme.of(context).textTheme.display1,
            ),
            Text(
              'Posicion en la que se encuentra $numP',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  _incrementPrimoCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}