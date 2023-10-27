import 'package:flutter/material.dart';

void main() => runApp(const PerguntaApp());

/**
Começar essa conversão é trocar onde tem statelles widget para state vou colocar aqui 
em stateFul e a primeira mudança e nós vamos criar uma outra classe que eu vou chamar 
aqui classe de perguntaAppState e essa pergunta é app state vai estender de um classe 
chamada state e aqui no state você vai passar uma anotação, para definir qual é o 
componente que você quer a primeira parte do processo de conexão entre o estado e um 
componente estético e você vai passar exatamente qual é o nome do componente estético 
que você quer controlar o estado dele então no caso aqui vai ser uma pergunta é eu 
passo para cá nesse parâmetro do genérico qual é o nome do componente com o estado que 
eu quero gerenciar a partir dessa classe então nós temos uma classe e vai gerenciar o 
estado e nós temos uma outra classe que vai ser o nosso componente então o nosso estado 
vai ser gerenciado nessa outra classe então eu vou jogar aqui para cima com o alt setinha 
para cima do mouse eu vou colocar aqui o meu estado que é perguntas selecionada recebendo 
aqui o valor zero ou também passar para cá o método _responder porque porque o médico vai 
_responder ele vai manipular esse valor e uma outra coisa também que a gente vai passar é o 
método beauty por que que eu vou passar o método para dentro do Estado porque o método seja 
minha área de componentes ela depende do estado da aplicação para se renderizada então por 
isso que eu vou selecionar isso aqui tudo e jogar aqui pra cima alto para cima para cima 
para cima poderia ter só copiado da minha classe
*/
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
// Colocando o underline em frente da fariavel torna ele em privado.
  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: const Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 *  Vai ser um método inclusive se eu quiser até usar aqui um atalho coma de ponto ele vai 
 * sugerir para eu criar um método que precisa ser sobre escrito e tem um conceito de orientação 
 * objeto que é uma classe abstrata ou seja classe abstrata pode ser um classe que define um 
 * método como abstrato que precisa ser implementado aqui tá acontecendo isso né ou eu posso 
 * transformar essa classe ó tornar a classe pergunta é abstrata né o que eu quero ou eu posso 
 * sobre escrever o método eu não vou sobreviver aqui a partir dessa ajuda mas eu vou implementar 
 * para vocês aqui o que é que esse método vai fazer ele vai criar um estado dentro de um 
 * estêntese um dos métodos que vai precisar ser feito um método na verdade e vai se precisar se 
 * implementar de um método cliente esse método não vai receber nenhum parâmetro e esse método 
 * vai retornar um estado qual é o estado que a gente vai retornar você pode colocar aqui ó tipo 
 * seja um estado que vai atender ao componente é exatamente o que a gente colocou aqui na herança 
 * no final das contas basta eu retornar uma pergunta primeira coisa que a gente fez foi trocar a
 *  herança agora o meu componente do Estado agora que vai controlar essa variável como o método 
 * _responder também precisava do Estado a _responder para dentro do estado e como a minha árvore de
 *  componentes
 * 
 */
class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
