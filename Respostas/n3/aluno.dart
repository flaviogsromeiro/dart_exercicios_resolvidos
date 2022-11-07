import 'dart:io';

void main() {
  String? nome;
  double? nota;
  String output;

  stdout.write('Olá, Usuário!');
  stdout.write('Digite o nome do aluno: ');
  nome = stdin.readLineSync();
  stdout.write('Agora, digite a nota do aluno: ');
  nota = double.tryParse(stdin.readLineSync()!);

  output = nota! >= 6 && nota <= 10
      ? 'Parabéns! Aluno aprovado. :)'
      : 'Que pena! Aluno reprovado :(';

  print(output);
}
