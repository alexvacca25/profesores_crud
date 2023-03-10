import 'package:flutter/material.dart';
import 'package:profesores_crud/domain/models/profesores.dart';
import 'package:profesores_crud/ui/pages/profesores/widget.dart';

class CrearProfes extends StatefulWidget {
  const CrearProfes({super.key});

  @override
  State<CrearProfes> createState() => _CrearProfesState();
}

class _CrearProfesState extends State<CrearProfes> {
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlprograma = TextEditingController();
  TextEditingController controlhoras = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear Profesores"),
      ),
      body: Center(
        child: Column(
          children: [
            Textos(controlnombre: controlnombre, titulo: 'Ingrese el Nombre'),
            Textos(
                controlnombre: controlprograma, titulo: 'Ingrese el Programa'),
            Textos(controlnombre: controlhoras, titulo: 'Ingrese las Horas'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Profesor profe = Profesor(
                        foto:
                            "https://modaellos.com/wp-content/uploads/2022/07/rostro-masculino-barba-1200x1232.png",
                        nombre: controlnombre.text,
                        horas: controlhoras.text,
                        programa: controlprograma.text,
                        estado: false);

                    Navigator.pop(context, profe);
                  },
                  child: const Text("Guardar Profes")),
            )
          ],
        ),
      ),
    );
  }
}
