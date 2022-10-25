import 'candidato.dart';
import 'dart:io';

import 'utilities.dart';

void main() {
  List<int?> votos = List.filled(3, 0);
  int soma = 0;

  Candidato a = Candidato();
  Candidato b = Candidato();
  Candidato c = Candidato();
  Utilities nulo = Utilities();
  Utilities branco = Utilities();

  print('Olá, Usuário!');
  for (var i = 0; i < 3; i++) {
    stdout.write('Digite a quantidade de votos do ${i + 1}° Candidato: ');
    votos[i] = int.tryParse(stdin.readLineSync()!);
    soma = soma + votos[i]!;
  }

  a.totalVotos = votos[0];
  b.totalVotos = votos[1];
  c.totalVotos = votos[2];

  stdout.write('Digite a quantidade de votos nulos: ');
  nulo.nulos = int.tryParse(stdin.readLineSync()!);
  stdout.write('Digite a quantidade de votos brancos: ');
  branco.brancos = int.tryParse(stdin.readLineSync()!);

  soma = soma + nulo.nulos! + branco.brancos!;

  print('');
  print('-------------------------RESULTADO-----------------------------');
  print('');

  print('TOTAL DE VOTOS: ${soma}');
  print('CANDIDATO A: ${a.porcentagemCandi(soma)} % dos votos.');
  print('CANDIDATO B: ${c.porcentagemCandi(soma)} % dos votos.');
  print('CANDIDATO C: ${b.porcentagemCandi(soma)} % dos votos.');
  print('NULOS: ${nulo.porcentagemNulos(soma)}');
  print('BRANCOS: ${branco.porcentagemBrancos(soma)}');
}
