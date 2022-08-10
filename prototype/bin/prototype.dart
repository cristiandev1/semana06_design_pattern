import 'pessoa.dart';

void main(List<String> arguments) {
  
  var pessoa1 = Pessoa();

  //Se quiser clonar o objeto crie nova instancia e referencia as propriedades desejadas e veja o problema ...
  var pessoa2 = Pessoa();
  pessoa2.name = pessoa1.name;
  pessoa2.idade = pessoa1.idade;
  //Opa... o _cpf esta privado e em algum momento na aplicacao vou precisar dele e nao temos acesso a ele, como resolver este problema ? 

  //Tenha uma interface para clonar o objeto assim consigo ter acesso a todos os atributos da classe.
  //Nao precisamos conhecer a estrutura da classe para poder clonar ela..

  pessoa2 = pessoa1.clone();

  print('HashCode Pessoa1 : ${pessoa1.hashCode}');
  print('HashCode Pessoa2 : ${pessoa2.hashCode}');

  //Devemos ter cuidado com a parte onde dentro da classe existem outras classes, exemplo a seguir ilustrando telefone.
  print('Objeto 1 $pessoa1');
  print('Objeto 2 $pessoa2');

  print('---------------------------- || ----------------------------');
  pessoa2.telefones?.removeAt(0);

  print('Objeto 1 $pessoa1');
  print('############ DIFERENCA EM LISTA ############');
  print('Objeto 2 $pessoa2');

  //Perceba que ele tambem removeu o telefone da primeira pessoa, mas pq sera ? 
  //Pq as duas classes estao apontando para a mesma referencia de memória alocada.
}
