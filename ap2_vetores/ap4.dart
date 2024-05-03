import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int numero = 0;
  print('1- Criador de vetor com tamanho digitado com números aleatórios');
  print('2- Criador de vetor com tamanho digitado com números digitados');
  print('3- Criador de 3 vetores');
  stdout.write('Digite um número do programa que você quer usar ');
  numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case 1:
      ap1();
      break;

    case 2:
      ap2();
      break;

    case 3:
      ap3();
      break;

    default:
      print('Digite um número válido');
  }
}

void ap1() {
  int numeroUsuario = 0;

  stdout.write('Digite um número correspondente ao tamanho do vetor ');
  numeroUsuario = int.parse(stdin.readLineSync()!);

  criaVetor(numeroUsuario);
}

void criaVetor(int numeroUsuario) {
  Random random = Random();

  List<int> vetor = [];

  for (int indice = 0; indice < numeroUsuario; indice++) {
    int numerosAleatorios = random.nextInt(1000);
    vetor.add(numerosAleatorios);
  }

  print('Vetor que corresponde ao tamanho $numeroUsuario criado: $vetor');
}

void ap2() {
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

void ap3() {
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
