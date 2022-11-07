import 'dart:io';

void main() {
  double? f, c;

  print('OLÁ USUÁRIO!');

  stdout.write('\nTemperatura Fahrenheit: ');
  f = double.tryParse(stdin.readLineSync()!);

  c = (f! - 32) / 1.8;

  stdout.write('\nEM CELSIUS: $c° graus');
}
