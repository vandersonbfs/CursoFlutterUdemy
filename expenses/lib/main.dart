import 'package:flutter/material.dart';

// Aula 84 Criando o Projeto Despesas Pessoais
// Inicialmente vamos criar uma StatelessWidget e importar o Material

main() => runApp(const ExpensesApp());

// Vamos criar uma classe chamada ExpensesApp, que extende uma StatelessWidget
// que retorna o MaterialApp, com uma home, que chama uma classe chamada
//MyHomeApp.

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

// Vamos criar uma classe chamada MyHomePage que contem uma build que retorna
//um child com uma Text, com o texte 'Versão Inicial'.

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: const Center(
        child: Text('Versão Inicial'),
      ),
    );
  }
}
