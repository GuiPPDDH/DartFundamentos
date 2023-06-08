void main() {
  final idade = 29;
  print('Sua idade: ' + idade.toString());
  print('Sua idade: $idade');

  final valor = -20;
  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorCertoString = '29';
  final valorInt = int.parse(valorCertoString);
  print(valorInt);

  final valorErradoString = 'Guilherme';
  final valorInt2 = int.tryParse(valorErradoString);
  print(valorInt2);
  if (valorInt2 != null) {
    print('O Valor é ${valorInt2 + valorInt}');
  }

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));
}
