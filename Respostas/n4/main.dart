import 'Entities/import_produto.dart';
import 'Entities/produto.dart';

void main() {
  ImportProduto p = ImportProduto();

  p.nome = 'Iphone';
  p.preco = 3.000;
  p.taxaImport = 20.00;
  p.precoTotal(p.taxaImport!);

  print(p);
}
