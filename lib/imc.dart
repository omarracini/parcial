import 'package:flutter/material.dart';

class PaginaIMC extends StatefulWidget {
  @override
  _PaginaIMCState createState() => _PaginaIMCState();
}

class _PaginaIMCState extends State<PaginaIMC> {
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 211, 61),  
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: pesoController,
              decoration: const InputDecoration(
                labelText: 'Peso (Kg)',
                hintText: 'Por favor, introduce tu peso aquí',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(
                labelText: 'Altura (mts)',
                hintText: ' introduce tu altura, ejemplo 1.67',
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
              child: const Text('Calcular'),
              onPressed: () {
                // Primero, obtén los valores ingresados por el usuario.
                double peso = double.parse(pesoController.text);
                double altura = double.parse(alturaController.text);
                double imc = peso / (altura * altura);

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Índice de Masa Corporal'),
                      content: Text('Tu IMC es ${imc.toStringAsFixed(2)}'),
                      actions: <Widget>[
                        TextButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                          child: const Text('Cerrar'),
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
            const SizedBox(height: 20),  
            Image.asset('lib/assets/wolverine.png'),  
          ],
        ),
      ),
    );
  }
}