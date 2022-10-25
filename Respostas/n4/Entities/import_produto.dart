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
  String toString() => '$nome - R\$ ${preco!.toStringAsFixed(2)} - (Taxa de importação: R\$ ${taxaImport!.toStringAsFixed(2)}.)';
}
