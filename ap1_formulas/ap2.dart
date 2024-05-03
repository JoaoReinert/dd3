import 'dart:io';

void main(List<String> args) {
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
