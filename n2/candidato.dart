// ignore_for_file: public_member_api_docs, sort_constructors_first
class Candidato {
  int? totalVotos;
  
  Candidato({
    this.totalVotos,
  });


  double porcentagemVotos(double totalVotos) {
    return ((this.totalVotos! / totalVotos) * 100);
  }
}
