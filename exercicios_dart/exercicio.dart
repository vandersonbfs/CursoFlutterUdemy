main() {
  print('Primeiro Programa!');
  int a = 3;
  double b = 3.1;
  bool estaChovendo = true;
  bool estaFrio = false;
  var c = 'Vc é muito legal';
  print('Verifica se c é uma String:');
  print(c is String);

  print('Verifica se c é uma String:');
  print(estaChovendo || estaFrio);

  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel');
  print('Contar elementos:');
  print(nomes.length);
  print('Conjuntos não aceitam elementos repetidos.');
  print('Acessas por indice:');
  print(nomes.elementAt(0));
  print(nomes[5]);

  print('Conjunto Set:');

  Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4};
  print('contar o Conjunto:');
  print(conjunto.length);
  print('Conjunto é um Set?');
  print(conjunto is Set);
}
