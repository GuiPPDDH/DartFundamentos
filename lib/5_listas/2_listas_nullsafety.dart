void main() {
  // ? = Nullable (Aceita Nula)
  //! Sem nada(padrão) = non-null(Não aceita nulo)

  var nomes = <String>[];

  //! Aceita nulo
  List<String> nomesNulos;

  //! Lista que não pode ser nulos, nem os itens
  List<String> nomesInternosNaoAceitaNulos = ['Guilherme'];

  //! Lista não pode ser nula, mas os itens podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Guilherme', null, 'Potter', null];

  //! Lista pode ser nula e os itens também podem ser nulos
  List<String?>? nomesInternosEListaAceitaNulos = null;

}
