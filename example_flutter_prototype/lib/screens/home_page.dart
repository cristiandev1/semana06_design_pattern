import 'package:example_flutter_prototype/screens/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore _homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Prototype'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_homeStore.person.name!),
            //Deixar sem o observer para mostrar que nao incrementa ...
            Observer(
              builder: (_) {
                return Text('${_homeStore.person.age!}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                _homeStore.haveaBirthday();
              },
              child: const Text('Make A Birthday'),
            ),
          ],
        ),
      ),
    );
  }
}
