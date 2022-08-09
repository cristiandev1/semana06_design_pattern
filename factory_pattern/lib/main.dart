import 'package:factory_pattern/factory/dialog_factory.dart';
import 'package:factory_pattern/model/dialog_action.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Alert Dialog Exemplo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _abrirDialog() {
    DialogFactory.showAlertDialog(
      context,
      title: const Text('Titulo Dialog'),
      content: const Text('Conteudo Dialog'),
      actions: [
        DialogAction(
          child: const Text('Ok'),
          onPressed: () => print('ok'),
        ),
        DialogAction(
          child: const Text('Cancelar'),
          onPressed: () => print('cancelar'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Mostrar Dialog',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _abrirDialog,
        tooltip: 'Abrir Dialog',
        child: const Icon(Icons.settings),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
