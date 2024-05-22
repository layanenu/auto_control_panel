import 'package:auto_control_panel/components/abast_form.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Novo abastecimento'),
    ),
      body: AbastForm(),
    );
  }
}