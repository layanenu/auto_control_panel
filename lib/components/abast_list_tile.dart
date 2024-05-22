import 'package:auto_control_panel/models/abastecimento.dart';
import 'package:auto_control_panel/screens/details_screen.dart';
import 'package:flutter/material.dart';

class AbastListTile extends StatelessWidget {
  const AbastListTile(
    this.abast, {
    super.key,
  });

  final Abastecimento abast;

  @override
  Widget build(BuildContext context) {
    String valorTotal = abast.valorTotal.toStringAsFixed(2);
    String quantLitros = abast.quantidadeLitros.toStringAsFixed(2);
    String autonomia = abast.autonomia().toStringAsFixed(2);
    return ListTile(
      leading: const Icon(Icons.ac_unit),
      title: Text('R\$ $valorTotal'),
      subtitle: Text('$quantLitros L'),
      trailing: Text('$autonomia km/l'),
      onTap: () {
        Navigator.pushNamed(context, 'details_screen', arguments: abast);
        // // Navigator.push(context, MaterialPageRoute(builder: (context) {
        // //   return DetailsScreen(abast);
        // }));
      },
    );
  }
}
