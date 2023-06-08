String? nome;
void main() {
  //!Forma 1
  var nomeCompleto =
      ((nome != null) ? nome! + ' Potter' : 'Guilherme Potter Petry');
  print(nomeCompleto);

  //!Forma 2
  String? nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + ' Potter';
  } else {
    nomeCompleto2 = 'Guilherme Potter';
  }

  print(nomeCompleto2);
}