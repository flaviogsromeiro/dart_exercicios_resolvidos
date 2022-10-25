// ignore_for_file: public_member_api_docs, sort_constructors_first
class Candidato {
  int? totalVotos;

  Candidato({
    this.totalVotos,
  });

  double? porcentagemCandi(int? totalVotos) {
    if (totalVotos != null) {
      return ((this.totalVotos! / totalVotos) * 100);
    }
    return null;
  }

  
}
