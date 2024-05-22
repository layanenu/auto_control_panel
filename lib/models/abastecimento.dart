class Abastecimento {
  double valorTotal;
  double quantidadeLitros;
  int quilometragemRodada;

  Abastecimento(
    this.valorTotal,
    this.quantidadeLitros,
    this.quilometragemRodada,
  );

  double autonomia() {
    return quilometragemRodada / quantidadeLitros;
  }
}