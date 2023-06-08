void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Guilherme', 'Potter', 'Petry', 'Dark', 'Dragon', 'Hand'];

  print('Imprimindo números com for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo números com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Dark') {
      break;
    }
  }

  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Dragon') {
      break;
    }
  }

  print('Imprimindo nomes com for convencional com continue');
  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] == 1 || numeros[i] == 3 || numeros[i] == 5) {
      continue;
    }
    print(numeros[i]);
  }

  print('Imprimindo nomes com for-in com continue');
  for (var nome in nomes) {
    if (nome == 'Dragon' || nome == 'Guilherme' || nome == 'Petry') {
      continue;
    }
    print(nome);
  }
}
