//!Variáveis de nível superior não podem ser inicializadas depois
//!Não é permitido
//!String nomeCompletoSuperior;
String nomeCompletoSuperior = 'Guilherme';
String? nomeCompletoSuperiorOpc;

void main() {
  //!Variaveis locais não precisam ser inicializadas de cara porem
  //!Podem ser criadas sem valor e depois ser atribuido um valor
  String nomeCompleto;
  String? nomeCompletoOpc;

  nomeCompleto = 'Guilherme Potter Petry';

  //!Variaveis locais que são nulas(nullable) por padrão
  //!Se for atribuido um valor a ela, automaticamente elas são promovidas a não-nulo(non-null)
  nomeCompletoOpc = '';

  //!Variaveis de nível superior NUNCA são promovidas para Não Nulo(non-null)
  nomeCompletoSuperiorOpc = '';

  print(nomeCompleto.length);
  print(nomeCompletoOpc.length);
}
