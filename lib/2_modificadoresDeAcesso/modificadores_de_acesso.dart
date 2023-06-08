void main() {
  var nomeCompleto = '';
  print(nomeCompleto);
  nomeCompleto = 'Guilherme Potter Petry';
  print(nomeCompleto);

  //! Variáveis final
  //! Não podem ser alteradas depois de inicializadas(Imutáveis)
  //! São definidas do programa em tempo de execução(RunTime)
  //! Utilize sem moderação
  final nomeCompletoFinal = 'Guilherme Potter Petry';
  final nomeCompletoFinal2 = nomeCompletoFinal;

  //! Variáveis const
  //! Não podem ser alteradas depois de inicializadas(Imutáveis)
  //! São definidas do programa em tempo de COMPILAÇÃO
  //! Não podem receber valores de outras variáveis a não ser que essas variáveis sejam const também
  //! Utilize sem moderação
  const nomeCompletoConst = 'Guilherme Potter Petry';
  const nomeCompletoConst2 = nomeCompletoConst;

}
