import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_widget/pages/enlace.dart';
 
class HomePagesTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];
  int opcione;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Widgets'),
      ),
      body: ListView(
        children: _crearItems(context)
      ),
    );
  }
 
  List<Widget> _crearItems(BuildContext context){
    List<Widget> lista = new List<Widget>();
    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo '+opt),
        leading: Icon(Icons.account_box),
        trailing: Icon(Icons.keyboard_arrow_right_rounded),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (opt) => Enlace(opcione),
            ));
        },
      );
      lista..add(tempWidget)..add(Divider());
      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
  }
}