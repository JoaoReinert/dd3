import 'dart:io';
import 'dart:math';

void main(List<String> args) {
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
