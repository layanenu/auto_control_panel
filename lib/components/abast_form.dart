import 'package:auto_control_panel/models/abastecimento.dart';
import 'package:auto_control_panel/providers/abast_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AbastForm extends StatelessWidget {
  AbastForm({super.key});

  // Para capturar o valor de cada TextField
  // o final serve para não deixar que o valor da variável mude
  final valorTotalController = TextEditingController();
  final quantidadeController = TextEditingController();
  final quilometragemController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final abastProvider = context.watch<AbastProvider>();
    final addAbast = abastProvider.addAbast;

    return SizedBox(
      child: Column(
        children: [
          TextField(
            controller: valorTotalController,
            decoration: const InputDecoration(
              hintText: 'Valor total (R\$)'
            ),
          ),
          TextField(
            controller: quantidadeController,
            decoration: const InputDecoration(
              hintText: 'Quantidade de litros (l)'
            ),
          ),
          TextField(
            controller: quilometragemController,
            decoration: const InputDecoration(
              hintText: 'Quilometragem (km)'
            ),
          ),
          ElevatedButton(
            onPressed: () {
              double valorTotal = double.parse(valorTotalController.text);
              double quantLitros = double.parse(quantidadeController.text);
              int quilometragem = int.parse(quilometragemController.text);
              final abast = Abastecimento(valorTotal, quantLitros, quilometragem);
              addAbast(abast);
            }, 
            child: const Text('Salvar')
          ),
        ],
      ),
    );
  }
}