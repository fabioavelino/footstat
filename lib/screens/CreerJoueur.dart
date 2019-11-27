import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Prénom'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Veuillez remplir le champ';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Nom'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Veuillez remplir le champ';
              }
              return null;
            },
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly
    ],
            decoration: InputDecoration(
              labelText: 'Numero'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Veuillez remplir le champ';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Joueur ajouté')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}