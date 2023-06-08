String? nome;
void main() {
  //! Forma Correta de aplicar null aware operator
  var sobrenome = 'Potter';

  var nomeCompleto = (nome ?? 'Guilherme ') + sobrenome;

  String? nomeCompleto2;
  print(nomeCompleto2 ?? 'Guilherme Potter');
}