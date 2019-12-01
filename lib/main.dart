import 'package:flutter/material.dart';
import 'package:footstat/screens/Accueil.dart';
import 'screens/Effectif.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Footstat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(    // si tu arrives a mettre ca dans un style histoire que je vois comment tu veux le code histoire qu'on s'aligne
        centerTitle: true,
        backgroundColor: Colors.black,
          title: Text('FootStats', 
          style: TextStyle(
            color: Colors.yellow ),
         ),
      ),
      body: Accueil(),
      ),
    );
  }
}
