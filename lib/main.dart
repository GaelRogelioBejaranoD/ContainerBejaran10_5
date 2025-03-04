import 'package:flutter/material.dart';

void main() => runApp(const MiContenedorApp());

class MiContenedorApp extends StatelessWidget {
  const MiContenedorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo Container girado"),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 23),
          backgroundColor: const Color(0xff258cff),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Bejarano Dominguez 1154",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 60),
              // Primer contenedor con padding derecho y tilt
              Transform.rotate(
                angle:
                    0.2, // Tilt angle in radians (negative for left tilt, positive for right tilt)
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0), // Right padding
                  child: Container(
                    width: 280,
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color(0xff258cff), // Color de fondo
                      borderRadius:
                          BorderRadius.circular(10), // Esquinas redondeadas
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff000000), // Color de la sombra
                          spreadRadius: 4, // Extensión de la sombra
                          blurRadius: 7, // Difuminado de la sombra
                          offset:
                              const Offset(5, 5), // Desplazamiento de la sombra
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Hola a todos',
                        style: TextStyle(
                          color: Color(0xff030303),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espacio entre los contenedores
            ],
          ),
        ),
      ),
    );
  } // Fin widgets
} // Fin de la clase
