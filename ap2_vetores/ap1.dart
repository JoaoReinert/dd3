import 'dart:io';
import 'dart:math';

void main(List<String> args) {
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
