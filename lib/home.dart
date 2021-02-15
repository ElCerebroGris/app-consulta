import 'package:consulta/listarConsultasPage.dart';
import 'package:consulta/meuPerfil.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Máxima"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.android)),
                  Tab(icon: Icon(Icons.cloud_download))
                ],
              )),
          body: TabBarView(
            children: <Widget>[ConsultaList(), PerfilPage()],
          ),
        ),
      ),
    );
  }
}
