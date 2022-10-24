import 'dart:io';

void main() {
  List<int> list = List.filled(10, 0);
  int maior = 0;
  int menor = 1000;
  String? input;

  bool isNumber(String s) {
    if (double.tryParse(s) == null) {
      return false;
    } else {
      return true;
    }
  }

  print('Digite 10 números: ');
  for (var i = 0; i < 10; i++) {
    input = stdin.readLineSync();
    if (input != null) {
      if (isNumber(input) == true) {
        list[i] = int.tryParse(input)!;
      } else {
        print('input inváldo. Digite um número.');
        input = stdin.readLineSync();
      }
    }
  }

  list.forEach((e) {
    if (e > maior) {
      maior = e;
    } else if (e < menor) {
      menor = e;
    }
  });

  print('------------------------------');
  print('Maior número é o ${maior}.');
  print('Menor número é o ${menor}.');
}
