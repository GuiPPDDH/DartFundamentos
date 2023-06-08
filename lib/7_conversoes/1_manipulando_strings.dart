void main() {
  final nome = 'Guilherme Potter Petry';

  //! Substring
  var subStringNome = nome.substring(10);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 10);
  print(subStringNome);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);
  if (sexoSigla == 'M') {
    print('Olá, você é do sexo masculino!');
  }

  if (sexoSigla.startsWith('Mas')) {
    print('Olá, você é do sexo masculino!');
  }

  if (sexoSigla.toLowerCase().startsWith('mas')) {
    print('Olá, você é do sexo masculino com letras minúsculas!');
  }

  if (nome.toLowerCase().contains('potter petry')) {
    print('Olá, você é da família potter petry!');
  }

  //! Interpolação
  var primeiroNome = 'Guilherme';
  var segundoNome = 'Potter';
  var terceiroNome = 'Petry';

  var saudacao = 'Olá ' +
      primeiroNome +
      ' ' +
      segundoNome +
      ' ' +
      terceiroNome +
      ', seja bem vindo!';
  print(saudacao);

  var saudacao2 =
      'Olá $primeiroNome $segundoNome $terceiroNome, seja bem vindo de novo!';
  print(saudacao2);
  print(
      'Olá ${primeiroNome.toLowerCase()} ${segundoNome.toLowerCase()} ${terceiroNome.toLowerCase()}');

  var paciente = 'Guilherme Potter Petry|29|Programador Jr|RS';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  for (var dado in dadosPaciente) {
    print(dado);
  }

  dadosPaciente.forEach((dado) {
    print(dado);
  });

  var pacientes = [
    'Guilherme Potter|29|Programador Jr Dart|RS',
    'Guilherme Petry|29|Programador Jr Flutter|RS'
  ];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var sobrenomes = nomeCompleto.split(' ');
    print(sobrenomes.last);
  }
}
