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
      backgroundColor: const Color.fromARGB(255, 125, 15, 28), 
      appBar: AppBar(
        title: const Text('Ruta Principal'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('lib/assets/deadpool.png'),  // Asegúrate de reemplazar 'deadpool-profile.png' con el nombre real de tu archivo de imagen
                const SizedBox(height: 20),  // Agrega un espacio vertical de 20 píxeles
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),  // Cambia el color del botón a negro
                  child: const Text('Calculadora IMC', style: TextStyle(color: Colors.white)),  // Cambia el color del texto a blanco para mejor visibilidad
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaginaIMC()),
                    );
                  },
                ),
                const SizedBox(height: 20),  // Agrega un espacio vertical de 20 píxeles
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),  // Cambia el color del botón a negro
                  child: const Text('Calculadora de Sueldo', style: TextStyle(color: Colors.white)),  // Cambia el color del texto a blanco para mejor visibilidad
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaginaSueldo()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}