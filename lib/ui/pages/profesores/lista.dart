import 'package:flutter/material.dart';
import 'package:profesores_crud/domain/models/profesores.dart';
import 'package:profesores_crud/ui/pages/profesores/add.dart';

class ListaProfes extends StatefulWidget {
  const ListaProfes({super.key});

  @override
  State<ListaProfes> createState() => _ListaProfesState();
}

class _ListaProfesState extends State<ListaProfes> {
  final List<Profesor> _profes = listaProfes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Profes'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const CrearProfes()))
                    .then((respuesta) {
                  _profes.add(respuesta);
                  setState(() {});
                });
              },
              icon: const Icon(Icons.add_circle))
        ],
      ),
      body: ListView.builder(
          itemCount: _profes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_profes[index].nombre),
              subtitle: Text(_profes[index].programa),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(_profes[index].foto)),
              trailing: CircleAvatar(
                backgroundColor:
                    (_profes[index].estado) ? Colors.green : Colors.grey,
                radius: 12.0,
                child: (_profes[index].estado)
                    ? Text("${_profes[index].horas}")
                    : const Text("0"),
              ),
            );
          }),
    );
  }
}
