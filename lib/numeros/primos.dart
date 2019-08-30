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
  static int numP=1;
  static var _list='';
  bool _numeroPrimo=false;

  Widget _primerosPrimos(){
    return SafeArea(
      child: Column(
        for(var i=0;i>4;i++){
          if(i==0){},
        },
      ),
    );
  }
    
  void _incrementPrimoCounter(){
    if(numP>15){
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
      body: _primerosPrimos(),
      floatingActionButton: FloatingActionButton(
        onPressed:  _incrementPrimoCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}