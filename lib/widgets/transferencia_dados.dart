import 'package:flutter/cupertino.dart';

class Transferencia{
  final String descricao;
  final double valor;
  final IconData? icone;

  Transferencia({required this.descricao, required this.valor, this.icone});

  @override 
  String toString() {
    return 'Transferencia{descrição: $descricao, valor: $valor}';
  }
}