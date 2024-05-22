import 'package:auto_control_panel/models/abastecimento.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final abast = ModalRoute.of(context)!.settings.arguments as Abastecimento;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),  
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text(abast.valorTotal.toStringAsFixed(2)),
            Text(abast.quantidadeLitros.toStringAsFixed(2)),
            Text(abast.quilometragemRodada.toString()),
          ],
        ),
      ),
    );
  }
}
