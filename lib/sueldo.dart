import 'package:flutter/material.dart';

class PaginaSueldo extends StatefulWidget {
  @override
  _PaginaSueldoState createState() => _PaginaSueldoState();
}

class _PaginaSueldoState extends State<PaginaSueldo> {
  final nombreController = TextEditingController();
  final horasController = TextEditingController();
  final valorHoraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Sueldo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
           TextField(
  controller: nombreController,
  decoration: InputDecoration(
    labelText: 'Nombre Empleado',
    hintText: 'Por favor, introduce el nombre del empleado aquí',
  ),
),
TextField(
  controller: horasController,
  decoration: InputDecoration(
    labelText: 'Horas trabajadas',
    hintText: 'Por favor, introduce las horas trabajadas aquí',
  ),
  keyboardType: TextInputType.number,
),
TextField(
  controller: valorHoraController,
  decoration: InputDecoration(
    labelText: 'Valor Hora',
    hintText: 'Por favor, introduce el valor por hora aquí',
  ),
  keyboardType: TextInputType.number,
),
ElevatedButton(
  child: Text('Calcular'),
  onPressed: () {
    // Primero, obtén los valores ingresados por el usuario.
    String nombreEmpleado = nombreController.text;
    int horasTrabajadas = int.parse(horasController.text);
    double valorHora = double.parse(valorHoraController.text);

    // Luego, calcula el sueldo.
    double sueldo = horasTrabajadas * valorHora;

    // Finalmente, muestra el resultado en un cuadro de diálogo.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sueldo de $nombreEmpleado'),
          content: Text('El sueldo total es \$${sueldo.toStringAsFixed(2)}'),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  },
),
          ],
        ),
      ),
    );
  }
}