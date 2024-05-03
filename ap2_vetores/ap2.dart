import 'dart:io';

void main(List<String> args) {
  int tamanho = 0;

  stdout.write('Digite um número correspondente ao tamanho do vetor ');
  tamanho = int.parse(stdin.readLineSync()!);

  perguntarNumeros(tamanho);
}

void perguntarNumeros(int tamanho) {
  int numeros = 0;
  List<int> vetor = [];

  for (int indice = 0; indice < tamanho; indice++) {
    stdout.write('Digite um número para armazenar dentro do vetor ');
    numeros = int.parse(stdin.readLineSync()!);

    vetor.add(numeros);
  }

  print('Seu vetor: $vetor');
}
