// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'produto.dart';

class UsadoProduto extends Produto {
  DateTime? dataFabricacao;

  UsadoProduto({
    String? nome,
    double? preco,
    this.dataFabricacao,
  }) : super(
          nome: nome,
          preco: preco,
        );

  DateTime dataFabricaca02({required dia, required mes, required ano}) {
    dataFabricacao = DateTime.utc(ano, mes, dia);
    return dataFabricacao!;
  }

  @override
  String toString() => '$nome (usado) - R\$ ${preco!.toStringAsFixed(2)} - (Data de fabricação: ${dataFabricacao!.day}/${dataFabricacao!.month}/${dataFabricacao!.year})';
}
