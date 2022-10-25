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

  
    @override
  String toString() => 'UsadoProduto(dataFabricacao: $dataFabricacao)';
}
