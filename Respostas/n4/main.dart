import 'Entities/import_produto.dart';
import 'Entities/produto.dart';
import 'dart:io';
import 'Entities/usado_produto.dart';

void main() {
  // VARIÁVEIS DE APOIO
  int? qtdProdutos;
  int? opcao;
  int? dia, mes, ano;

  // OBJETOS
  Produto c = Produto();
  ImportProduto im = ImportProduto();
  UsadoProduto u = UsadoProduto();

  // PROGRAMA

  print('\nOlá, Usuário!');
  stdout.write('Quantos produtos você comprou: ');
  qtdProdutos = int.tryParse(stdin.readLineSync()!);

  List<dynamic> listProdutos = List.filled(qtdProdutos!, 0);

  for (var i = 0; i < listProdutos.length; i++) {
    print('\nDados do Produto \#${i + 1}:');
    print('\nSelecione uma opção: \n(1) COMPRADO\n(2) USADO\n(3) IMPORTADO');
    opcao = int.tryParse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write('\nNome: ');
        c.nome = stdin.readLineSync();
        stdout.write('Preço: R\$ ');
        c.preco = double.tryParse(stdin.readLineSync()!);
        break;
      case 2:
        stdout.write('\nNome: ');
        u.nome = stdin.readLineSync();
        stdout.write('Preço: ');
        u.preco = double.tryParse(stdin.readLineSync()!);
        print('Data de fabricação:');
        stdout.write('Dia: ');
        dia = int.tryParse(stdin.readLineSync()!);
        stdout.write('Mês: ');
        mes = int.tryParse(stdin.readLineSync()!);
        stdout.write('Ano: ');
        ano = int.tryParse(stdin.readLineSync()!);

        break;
      case 3:
        stdout.write('\nNome: ');
        im.nome = stdin.readLineSync();
        stdout.write('Preço: ');
        im.preco = double.tryParse(stdin.readLineSync()!);
        stdout.write('Taxa de Importação: ');
        im.taxaImport = double.tryParse(stdin.readLineSync()!);
        im.precoTotal(im.taxaImport!);

        break;
      default:
        while (true) {
          print('Opção inválida. Digite novamente');
          opcao = int.tryParse(stdin.readLineSync()!);
          if (opcao != 1 && opcao != 2 && opcao != 3) {
            print('Opção inváida. \nPrograma encerrado');
            break;
          }
        }
    }
  }

  print('\n--------------------- RESULTADO ----------------------\n');
  print(im);
  print(c);
  print(u);
}
