// ignore_for_file: public_member_api_docs, sort_constructors_first
class Produto {
  String? nome;
  double? preco;

  Produto({
    this.nome,
    this.preco,
  });

  @override
  String toString() => '$nome - R\$ $preco';
}
