void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  print('Pacientes com mais de 20 anos:');
  for (final paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final idadePaciente = int.parse(dadosPaciente[1]);
    if (idadePaciente > 20) {
      print(dadosPaciente[0]);
    }
  }
  print('\n');

  //! 2 parte com for-in e forEach
  print('Quantidade de profissões dos pacientes:');
  final desenvolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalistas = [];
  var qtdDesenvolvedor = 0;
  var qtdEstudante = 0;
  var qtdDentista = 0;
  var qtdJornalista = 0;

  for (final paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final nome = dadosPaciente[0];
    final profissao = dadosPaciente[2].toLowerCase();
    if (profissao == 'desenvolvedor') {
      desenvolvedores.add(nome);
      qtdDesenvolvedor++;
      //desenvolvedores.add(profissao);
    }
    if (profissao == 'estudante') {
      estudantes.add(nome);
      qtdEstudante++;
      //estudantes.add(profissao);
    }
    if (profissao == 'dentista') {
      dentistas.add(nome);
      qtdDentista++;
      //dentistas.add(profissao);
    }
    if (profissao == 'jornalista') {
      jornalistas.add(nome);
      qtdJornalista++;
      //jornalistas.add(profissao);
    }
  }

  print('Desenvolvedores');
  desenvolvedores.forEach((nome) => print(nome));
  print('Quantidade: $qtdDesenvolvedor');
  print('\n');
  print('Estudantes:');
  estudantes.forEach((nome) => print(nome));
  print('Quantidade: $qtdEstudante');
  print('\n');
  print('Dentistas:');
  dentistas.forEach((nome) => print(nome));
  print('Quantidade: $qtdDentista');
  print('\n');
  print('Jornalistas');
  jornalistas.forEach((nome) => print(nome));
  print('Quantidade: $qtdJornalista');
  print('\n');

  //! 2 parte com Switch
  var quantidadeDesenvolvedor = 0;
  var quantidadeEstudante = 0;
  var quantidadeDentista = 0;
  var quantidadeJornalista = 0;
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var profissaoPaciente = dadosPaciente[2];
    switch (profissaoPaciente.toLowerCase()) {
      case 'desenvolvedor':
        quantidadeDesenvolvedor++;
        break;
      case 'estudante':
        quantidadeEstudante++;
      case 'dentista':
        quantidadeDentista++;
      case 'jornalista':
        quantidadeJornalista++;
      default:
        print('Profissão desconhecida');
    }
  }
  print('Desenvolvedor: $quantidadeDesenvolvedor');
  print('Estudante: $quantidadeEstudante');
  print('Dentista: $quantidadeDentista');
  print('Jornalista: $quantidadeJornalista');
  print('\n');

  print('Pacientes que moram em São Paulo:');
  for (final paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final estado = dadosPaciente[3].toUpperCase();
    if (estado == 'SP') {
      print(dadosPaciente[0]);
    }
  }

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
}