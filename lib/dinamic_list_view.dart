import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // o controller é uma variável ligada a um componente de input de dados
  final controller = TextEditingController();
  final list = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello world"),
        ),
        body: Column(
          children: [
            // se quisermos ter um box que possua padding, basta envolver os elementos
            // em um widget Padding
            Padding(
                padding: const EdgeInsets.all(8),
                child: Row(children: [
                  Expanded(child: TextField(controller: controller)),
                  IconButton(
                      onPressed: () {
                        final text = controller.text;
                        setState(() {
                          list.add(text);
                        });
                        controller.clear();
                      },
                      icon: const Icon(Icons.add))
                ])),
            Expanded(
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final item = list[index];
                    return ListTile(title: Text(item));
                  }),
            )
          ],
        ));
  }
}
