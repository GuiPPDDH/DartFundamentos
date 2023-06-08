void main() {
  //! O Iterable possui formas melhores de trabalhar com listas, for, for-in e filtração com condidionais

  //! where vai organizar a lista ONDE acontece uma condição pra que a ação aconteça
  //! forEach é pra cada item de uma lista faça alguma ação
  final numeros = List.generate(10, (index) => index);
  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  //!takeWhile vai pegar cada elemento da lista até que chegue a condição
  //!toList vai pegar a lista pronta e retornar.
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();
  print(numerosAte6);

  //! SkipWhile vai remover os elementos da lista até chegar na condição
  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosRemoverAte5);

  var nomes = ['Guilherme', 'Potter', 'Petry', 'Dark', 'Dragon', 'Hand'];
  var nomesSkip = nomes.skipWhile((nome) {
    //! se nome for igual a 'Dark', então é falso e ignora
    //! se for igual, então é true e vai parar de ignorar e sair do laço de repetição
    if (nome == 'Dark') {
      return false;
    } else {
      return true;
    }
  }).toList();
  print(nomesSkip);

  //! Map vai mapear, vai pegar uma lista e vai transformar em outra lista
  var numeroStringList = numeros.map((numero) {
    return 'O número é $numero';
  }).toList();
  print(numeroStringList);
}
