import 'dart:io';

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
  List<List<int>> matriz = [];

  for (int indiceLinha = 0; indiceLinha < linhas; indiceLinha++) {
    List<int> linha = [];

    for (int indiceColuna = 0; indiceColuna < colunas; indiceColuna++) {
      print('Digite o número que você deseja colocar na matriz');
      int numeros = int.parse(stdin.readLineSync()!);
      linha.add(numeros);
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
