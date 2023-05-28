import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text("Hello world"),
      ),
      body: SizedBox(
          width: 300,
          //SizedBox representa uma caixa que por padrão possui a largura dos
          //seus filhos, mas que pode ter uma largura definida(300)
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisAlignment representa o alinhamento vertical da coluna
            //crossAxisAlignment representa o alinhamento horizontal da coluna
            //a lógica se inverte em se tratando do Row similar ao align items
            //do flex box,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.cyanAccent,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.deepOrange,
              )
            ],
          )),
    );
  }
}
