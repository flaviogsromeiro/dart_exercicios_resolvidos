// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'produto.dart';

class ImportProduto extends Produto {
  double? taxaImport;

  ImportProduto({
    String? nome,
    double? preco,
    this.taxaImport,
  }) : super(
          nome: nome,
          preco: preco,
        );

  double? precoTotal(double taxa) {
    if (preco != null) {
      return this.preco = this.preco! + taxa;
    }
    return null;
  }

  @override
  String toString() =>
      'Nome: $nome, Preço: $preco, Taxa de Importação: $taxaImport.';
}
