import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('1- Teorema de Pitágoras');
  print('2- Transformação de um número binário');
  print('3- Fórmula de Bhaskara');

  stdout.write('Digite o número do programa que você quer usar ');
  int numero = int.parse(stdin.readLineSync()!);

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
  double lado1 = 0.0;
  double lado2 = 0.0;
  double dimensao = 0.0;

  stdout.write('Digite o cateto 1 ');
  lado1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o cateto 2 ');
  lado2 = double.parse(stdin.readLineSync()!);

  dimensao = dimensaoDoMaiorLado(lado1, lado2);

  print('A dimensão do maior lado do seu triângulo é: $dimensao');
}

double dimensaoDoMaiorLado(double lado1, double lado2) {
  num resultado = pow(lado1, 2) + pow(lado2, 2);

  return sqrt(resultado);
}

void ap2() {
  int numeroDecimal = 0;
  String numeroConvertidoBinario = '';
  String numeroConvertidoOctal = '';
  String numeroConvertidoHexadecimal = '';

  stdout.write('Digite um numero decimal ');
  numeroDecimal = int.parse(stdin.readLineSync()!);

  numeroConvertidoBinario = converteParaNumeroBinario(numeroDecimal);
  print(
      'O número $numeroDecimal convertido para binário é $numeroConvertidoBinario');

  numeroConvertidoOctal = converteParaNumeroOctal(numeroDecimal);
  print(
      'O número $numeroDecimal convertido para octal é $numeroConvertidoOctal');

  numeroConvertidoHexadecimal = converteParaNumeroHexadecimal(numeroDecimal);
  print(
      'O número $numeroDecimal convertido para octal é $numeroConvertidoHexadecimal');
}

String converteParaNumeroBinario(int numeroDecimal) {
  String numeroBinario = '';

  while (numeroDecimal > 0) {
    int resto = numeroDecimal % 2;
    numeroBinario = resto.toString() + numeroBinario;
    numeroDecimal = numeroDecimal ~/ 2;
  }

  return numeroBinario;
}

String converteParaNumeroOctal(int numeroDecimal) {
  String numeroOctal = '';

  while (numeroDecimal > 0) {
    int resto = numeroDecimal % 8;
    numeroOctal = resto.toString() + numeroOctal;
    numeroDecimal = numeroDecimal ~/ 8;
  }

  return numeroOctal;
}

String converteParaNumeroHexadecimal(int numeroDecimal) {
  String numeroHexadecimal = '';

  while (numeroDecimal > 0) {
    int resto = numeroDecimal % 16;
    if (resto < 10) {
      numeroHexadecimal = resto.toString() + numeroHexadecimal;
    } else {
      numeroHexadecimal = String.fromCharCode(resto + 55) + numeroHexadecimal;
    }
    numeroDecimal = numeroDecimal ~/ 16;
  }

  return numeroHexadecimal;
}

void ap3() {
  int a = 0;
  int b = 0;
  int c = 0;

  stdout.write('Digite o a ');
  a = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o b ');
  b = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o c ');
  c = int.parse(stdin.readLineSync()!);

  bhaskara(a, b, c);
}

void bhaskara(int a, int b, int c) {
  double raiz1 = 0.0;
  double raiz2 = 0.0;

  num discriminante = pow(b, 2) - 4 * a * c;

  if (discriminante < 0) {
    print('A equação não possui raizes reais');
  } else {
    raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    raiz2 = (-b - sqrt(discriminante)) / (2 * a);

    print('raiz 1: $raiz1');
    print('raiz 2: $raiz2');
  }
}
