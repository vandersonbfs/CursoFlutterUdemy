import 'package:flutter/material.dart';

//Criando outro componente
class Questao extends StatelessWidget {
  //Criando um construtor
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          texto,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
