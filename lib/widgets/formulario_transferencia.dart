// ignore_for_file: prefer_const_constructors, avoid_print, dead_code, use_key_in_widget_constructors

import 'package:bytebank/widgets/editor.dart';
import 'package:bytebank/widgets/transferencia_dados.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerDescricao = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    final String descricao = _controllerDescricao.text;
    final String valor = _controllerValor.text;
    final transferenciaCriada =
        Transferencia(descricao: descricao, valor: double.parse(valor));
    print('criando');
    print('$transferenciaCriada');
    Navigator.pop(context, transferenciaCriada);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando Transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controllerDescricao,
              rotulo: 'Descrição',
              dica: 'Descrição da transferência',
            ),
            Editor(
              controlador: _controllerValor,
              rotulo: 'Valor',
              dica: '0.00',
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
