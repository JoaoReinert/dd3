import 'dart:io';
import 'dart:math';

void main(List<String> args) {
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
