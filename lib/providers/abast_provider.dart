import 'package:flutter/material.dart';

import '../models/abastecimento.dart';

class AbastProvider extends ChangeNotifier {
    List<Abastecimento>? abastecimentos = [
    Abastecimento(150.0, 40.0, 500),
    Abastecimento(120.0, 35.0, 500),
    Abastecimento(200.0, 50.0, 500),
    Abastecimento(180.0, 45.0, 500),
    Abastecimento(160.0, 38.0, 500),
  ];

  void addAbast(Abastecimento abast) {
  abastecimentos?.add(abast);
  notifyListeners();
}
}

