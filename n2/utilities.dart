// ignore_for_file: public_member_api_docs, sort_constructors_first
class Utilities {
  int? brancos;
  int? nulos;

  Utilities({
    this.brancos,
    this.nulos,
  });

  double? porcentagemNulos(int? totalVotos) {
    if (totalVotos != null) {
      return ((this.nulos! / totalVotos) * 100);
    }
    return null;
  }

  double? porcentagemBrancos(int? totalVotos) {
    if (totalVotos != null) {
      return ((this.brancos! / totalVotos) * 100);
    }
    return null;
  }
}
