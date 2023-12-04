import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultaddo.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    //Retirou de dentro metodo build
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
// temPerguntaSelecionada tem que ser menos que o tamanho da lista.
// caso contrario ele não chama o set
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

// Criou um getter,
//temPerguntaSelecionada tem que ser menos que o tamanho da lista.
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

//Mudou a variavel perguntas para privado
  @override
  Widget build(BuildContext context) {
    // Se temPerguntaSelecionada então carrega as respostas.
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            // Se temPerguntaSelecionada então carrega as respostas.
            ? Column(
                children: [
                  Questao(_perguntas[_perguntaSelecionada]['texto'] as String),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
