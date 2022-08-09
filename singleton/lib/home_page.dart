import 'package:flutter/material.dart';
import 'package:singleton/singleton/singleton_exemplo.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SingletonExemplo singleton = SingletonExemplo();
  SingletonExemplo singleton2 = SingletonExemplo();


  // Exemplificar depois
  // final SingletonExemplo singleton = SingletonExemplo.instance;
  // final SingletonExemplo singleton2 = SingletonExemplo.instance;

  @override
  Widget build(BuildContext context) {
    print(singleton.hashCode);
    print(singleton2.hashCode);
    
    return Container();
  }
}