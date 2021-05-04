import 'package:flutter/cupertino.dart'; 

import 'package:flutter/material.dart'; 

import 'package:flutter_application_widget/providers/menu_provider.dart'; 

import 'package:flutter_application_widget/utils/icon_string.dart'; 

 

class HomePage extends StatelessWidget { 

  @override 

  Widget build(BuildContext context) { 

return Scaffold( 

appBar: AppBar( 

title: Text('PROYECTO'), 

), 

body:_lista(context), 

); 

} 

 

Widget _lista(BuildContext context) { 

return FutureBuilder( 

      future: menuProvider.cargarData(), 

initialData: [], 

builder: (context, AsyncSnapshot<List<dynamic>> snapshot) { 

return ListView( 
children: _listaItems(snapshot.data, context), 

); 

}, 

); 

} 

 

List<Widget> _listaItems(List<dynamic> data, BuildContext context) { 

final List<Widget> opciones = []; 

 

data.forEach((opt) { 

final widgetTemp = ListTile( 

title: Text(opt['texto']), 

leading: getIcon(opt['icon']), 

trailing: Icon( 
Icons.keyboard_arrow_right_sharp, 

color: Colors.lightBlueAccent, 

), 

onTap: () { 

showDialog( 

context: context, 

builder: (BuildContext context) => 

 _builPopUpDialog(context, opt['texto']), 

); 

}, 

); 

opciones..add(widgetTemp)..add(Divider()); 

}); 

return opciones; 

} 

 

Widget _builPopUpDialog(BuildContext context, String opt) { 

return new AlertDialog( 

title: const Text('ELEJISTE ESTA OPCION'), 

content: new Column( 

mainAxisSize: MainAxisSize.min, 

children: <Widget>[ 

Text('OPCION ' + opt), 

], 

), 

actions: <Widget>[ 

new FlatButton( 

onPressed: () { 

Navigator.of(context).pop(); 

}, 

textColor: Theme.of(context).primaryColor, 

child: const Text('Cerrar'), 

), 

], 

); 

} 

} 