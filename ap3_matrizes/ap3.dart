import 'dart:io';

void main(List<String> args) {
  int colunas = 0;
  int linhas = 0;

  stdout.write('Digite o número de linhas da sua matriz ');
  linhas = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o número de colunas da sua matriz ');
  colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> matrizReal = Matriz(linhas, colunas);

  

  List<List<int>> matrizModificada = MatrizModificada(matrizReal);
  imprimir(matrizReal);
  imprimirMatrizModificada(matrizModificada);
}

List<List<int>> Matriz(int linhas, int colunas) {
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

List<List<int>> MatrizModificada(List<List<int>> matriz) {
  List<List<int>> matrizModificada = [];

  print('Digite um número real para ser multiplicado pela sua matriz');

  int numeroReal = int.parse(stdin.readLineSync()!);

  for (List<int> linha in matriz) {
    List<int> novaLinha = [];

    for (int numero in linha) {
      novaLinha.add(numero * numeroReal);
    }
    matrizModificada.add(novaLinha);
  }

  return matrizModificada;
}

void imprimirMatrizModificada(List<List<int>> matriz) {
  print('Matriz modificada:');
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}
