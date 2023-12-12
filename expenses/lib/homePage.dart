import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Text('Gráfico'),
          ),
          Card(
            child: Text('A Lista de Transações'),
          )
        ],
      ),
    );
  }
}
