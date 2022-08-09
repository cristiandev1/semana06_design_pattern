import 'package:example_flutter_prototype/models/person_model.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  PersonModel person = PersonModel(name: 'Cristian', age: 18);

  @action
  void haveaBirthday() {
    person.age = person.age! +1;
    //alterando apenas uma propriedade dentro da instancia e nao a instancia toda.
    print(person.age);

    //adicionar o copyWith depois no objeto
    // alterando instancia ...
    //person = person.copyWith(age: person.age! +1);
  }
}
