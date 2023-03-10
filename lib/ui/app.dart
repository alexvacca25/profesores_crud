import 'package:flutter/material.dart';
import 'package:profesores_crud/ui/pages/profesores/lista.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion Profes',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const ListaProfes(),
    );
  }
}
