// import 'package:auto_control_panel/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, "21:51:40");
          }, 
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.blueAccent,
        title: const Text("Sobre nós"),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.pop(context, "21:51:40"); // o pop desempilha uma tela na pilha de navegação e o push empilha
        //     //   Navigator.push(
        //     //     context, 
        //     //     MaterialPageRoute(builder: (context) {
        //     //       return const HomeScreen();
        //     //   }),
        //     // );
        //   }, 
        //   icon: const Icon(Icons.home))
        // ],
      ),
      body: const Center(
        child: Text("Sobre Nós!"),
      ),
    );
  }
}
