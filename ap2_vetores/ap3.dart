import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int tamanho = 0;

  stdout.write('Digite um número correspondente ao tamanho do vetor ');
  tamanho = int.parse(stdin.readLineSync()!);

  vetor1(tamanho);
}

void vetor1(int tamanho) {
  int numeros = 0;
  List<int> vetor = [];
  List<int> vetor2 = [];
  List<int> vetor3 = [];

  for (int indice = 0; indice < tamanho; indice++) {
    stdout.write('Digite um número para armazenar dentro do vetor ');
    numeros = int.parse(stdin.readLineSync()!);

    vetor.add(numeros);

    int numerosAleatorios = Random().nextInt(1000);
    vetor2.add(numerosAleatorios);

    vetor3.add(numeros + numerosAleatorios);
  }

  print('Seu vetor: $vetor');
  print('Vetor com números aleatórios: $vetor2');
  print('Seu terceiro vetor com a soma dos outros vetores: $vetor3');
}
