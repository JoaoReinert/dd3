import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int colunas = 0;
  int linhas = 0;

  stdout.write('Digite o número de linhas da sua matriz ');
  linhas = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o número de colunas da sua matriz ');
  colunas = int.parse(stdin.readLineSync()!);

  var matrizReal = matriz(linhas, colunas);

  imprimir(matrizReal);
}

List<List<int>> matriz(int linhas, int colunas) {
  Random random = Random();

  List<List<int>> matriz = [];

  for (int indiceLinha = 0; indiceLinha < linhas; indiceLinha++) {
    List<int> linha = [];

    for (int indiceColuna = 0; indiceColuna < colunas; indiceColuna++) {
      int numerosAleatorios = random.nextInt(100);
      linha.add(numerosAleatorios);
    }

    matriz.add(linha);
  }

  return matriz;
}

void imprimir(List<List<int>> matriz) {
  print('Sua matriz:');
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}
