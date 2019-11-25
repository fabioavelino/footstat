import 'package:flutter/material.dart';

class creerJoueur extends StatefulWidget {
  @override
  _creerJoueurState createState() => _creerJoueurState();
}

class _creerJoueurState extends State<creerJoueur> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
          title: Text('Création de joueur', 
          style: TextStyle(
            color: Colors.yellow ),
         ),
      ),
      body: customForm()
      );
  }
}

class customForm extends StatefulWidget {
  @override
  _customFormState createState() => _customFormState();
}

final _formKey = GlobalKey<FormState>();

class _customFormState extends State<customForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
        },
      ),
    );
  }
}