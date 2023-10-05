import 'package:flutter/material.dart';
import 'package:parcial/imc.dart';
import 'package:parcial/sueldo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegación Básica',
    home: RutaPrincipal(),
  ));
}

class RutaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ruta Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Calculadora IMC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaIMC()),
                );
              },
            ),
            SizedBox(height: 20),  // Agrega un espacio vertical de 20 píxeles
            ElevatedButton(
              child: Text('Calculadora de Sueldo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaginaSueldo()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}