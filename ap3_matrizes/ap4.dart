import 'dart:io';

void main(List<String> args) {
  int colunas = 0;
  int linhas = 0;

  stdout.write('Digite o número de linhas das suas matrizes ');
  linhas = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o número de colunas das suas matrizes ');
  colunas = int.parse(stdin.readLineSync()!);

  List<List<int>> primeiraMatriz = PrimeiraMatriz(linhas, colunas);
  List<List<int>> segundaMatriz = SegundaMatriz(linhas, colunas);
  List<List<int>> terceiraMatriz = TerceiraMatriz(primeiraMatriz, segundaMatriz);

  imprimir(primeiraMatriz);
  imprimirSegundaMatriz(segundaMatriz);
  imprimirTerceiraMatriz(terceiraMatriz);
}

List<List<int>> PrimeiraMatriz(int linhas, int colunas) {
  List<List<int>> matriz = [];

  for (int indiceLinha = 0; indiceLinha < linhas; indiceLinha++) {
    List<int> linha = [];

    for (int indiceColuna = 0; indiceColuna < colunas; indiceColuna++) {
      print('Digite os números que você deseja colocar na sua primeira matriz');
      int numeros = int.parse(stdin.readLineSync()!);
      linha.add(numeros);
    }

    matriz.add(linha);
  }

  return matriz;
}

void imprimir(List<List<int>> matriz) {
  print('Matriz 1:');
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}

List<List<int>> SegundaMatriz(int linhas, int colunas) {
  List<List<int>> matriz = [];

  for (int indiceLinha = 0; indiceLinha < linhas; indiceLinha++) {
    List<int> linha = [];

    for (int indiceColuna = 0; indiceColuna < colunas; indiceColuna++) {
      print('Digite os números que você deseja colocar na sua segunda matriz');
      int numeros = int.parse(stdin.readLineSync()!);
      linha.add(numeros);
    }

    matriz.add(linha);
  }

  return matriz;
}

void imprimirSegundaMatriz(List<List<int>> matriz) {
  print('Matriz 2:');
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}

List<List<int>> TerceiraMatriz(List<List<int>> primeiraMatriz, List<List<int>> segundaMatriz) {
  List<List<int>> terceiraMatriz = [];

  for (int i = 0; i < primeiraMatriz.length; i++) {
    List<int> linha = [];
    for (int j = 0; j < segundaMatriz[0].length; j++) {
      linha.add(0);
    }
    terceiraMatriz.add(linha);
  }

  for (int i = 0; i < primeiraMatriz.length; i++) {
    for (int j = 0; j < segundaMatriz[0].length; j++) {
      int soma = 0;
      for (int k = 0; k < primeiraMatriz[0].length; k++) {
        soma += primeiraMatriz[i][k] * segundaMatriz[k][j];
      }
      terceiraMatriz[i][j] = soma;
    }
  }

  return terceiraMatriz;
}

void imprimirTerceiraMatriz(List<List<int>> matriz) {
  print('Matriz 3:');
  for (List<int> linha in matriz) {
    print(linha.join(' '));
  }
}
