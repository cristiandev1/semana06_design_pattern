// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'i_prototype.dart';
import 'telefone.dart';

class Pessoa implements IPrototype<Pessoa> {
  String? name;
  int? idade;
  String? _cpf;

  // adicionar telefone depois
  List<Telefone>? telefones;

  // Um construtor privado é útil nos casos onde você quer impedir que a classe seja instanciada
  // ou quer permitir que ela seja instanciada apenas dentro dela própria.
  Pessoa._();

  factory Pessoa() {
    var p = Pessoa._();
    p.name = 'cristian';
    p.idade = 25;
    p._cpf = '123123123';

    //Implementar depois
    p.telefones = [
      Telefone(telefone: '(45) 99999-9999'),
      Telefone(telefone: '(46) 9898-9898')
    ];
    return p;
  }

  @override
  Pessoa clone() {
    var p = Pessoa();
    p.name = name;
    p.idade = idade;
    p._cpf = _cpf;

    //Exemplo mostrando forma em que referencia mesmo espaco de memoria, apenas associando a nova instancia.
    p.telefones = telefones;
    
    // Adicionar depois e excluir a de cima ...
    //p.telefones =  [...telefones!];


    // explicacao spread operator
    //List<int> lista1 = [1, 2, 3]; 
    //List<int> lista2 = [...lista1]; //adiciona novos valores como se fosse o addAll(lista1);
    //List<int> lista2 = lista1; // referencia valores a mesmo espaco de memória ...
    return p;
  }

  @override
  String toString() {
    return 'Pessoa(name: $name, idade: $idade, _cpf: $_cpf, telefones: $telefones)';
  }
}
