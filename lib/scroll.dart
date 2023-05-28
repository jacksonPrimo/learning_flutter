import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// class _HomePageState extends State<HomePage> {
//   var counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello world"),
//       ),
//       body: SizedBox(
//           width: double.infinity,
//           child: SingleChildScrollView(
//             // Podemos adicionar um scroll para uma column/row tornando ela filha do
//             // widgt SingleChildScrollView
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 for (var i = 0; i < 10; i++)
//                   Container(
//                     width: double.infinity,
//                     // double.infinity deixa o elemento com a largura total da tela se
//                     // limitando apenas baseado no padding
//                     height: 80,
//                     color: Colors.cyanAccent,
//                     margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
//                   ),
//               ],
//             ),
//           )),
//     );
//   }
// }
// podemos fazer a mesma ação acima usando apenas um componente o ListView

// class _HomePageState extends State<HomePage> {
//   var counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello world"),
//       ),
//       body: SizedBox(
//           width: double.infinity,
//           child: ListView(
//             children: [
//               for (var i = 0; i < 10; i++)
//                 Container(
//                   width: double.infinity,
//                   height: 80,
//                   color: Color.fromARGB(115, 187, 26, 26),
//                   margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
//                 ),
//             ],
//           )),
//     );
//   }
// }

// o ListView possui um construtor que facilita a repetição de elementos internos
// sem a necessidade do foreach

class _HomePageState extends State<HomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world"),
      ),
      body: SizedBox(
          width: double.infinity,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(115, 187, 26, 26),
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                );
              })),
    );
  }
}
