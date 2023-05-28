import 'package:flutter/material.dart';

// Todo componente com estado terá um widget e um state
// aqui instanciamos o widget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold é um widget que representa uma pagina da aplicação
      appBar: AppBar(
        title: Text("Hello world"),
        backgroundColor: Color.fromARGB(255, 24, 172, 61),
      ),
      body: Center(child: Text("flutterando: ${counter}")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 24, 172, 61),
        child: (Icon(Icons.adb_rounded)),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
