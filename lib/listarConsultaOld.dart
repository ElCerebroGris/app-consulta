import 'package:consulta/addConsulta.dart';
import 'package:flutter/material.dart';

class ConsultaList extends StatefulWidget {
  @override
  createState() => new ConsultaListState();
}

class ConsultaListState extends State<ConsultaList> {
  List<String> _consultaItems = ['Fisioterapia', 'Otorrino'];

  void _addTodoItem() {
    setState(() {
      int index = _consultaItems.length;
      _consultaItems.add('Item ' + index.toString());
    });
  }

  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < _consultaItems.length) {
          return _buildTodoItem(_consultaItems[index]);
        }
      },
    );
  }

  // Build a single todo item
  Widget _buildTodoItem(String todoText) {
    return new ListTile(title: new Text(todoText));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Lista de Consultas'),
      ),
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return AddConsultaPage();
              }),
            );
          },
          tooltip: 'Nova Consulta',
          child: new Icon(Icons.add)),
    );
  }
}
