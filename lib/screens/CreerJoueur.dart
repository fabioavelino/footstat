import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:footstat/models/Joueur.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

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
  String _name;
  String _firstName;
  int _number;
  String _post;


  ajouterJoueur(){
    Joueur joueur =  new Joueur(_number, _name, _firstName);
    
    print(_name);
    print(joueur.numero);
  }

   @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                labelText: 'Prénom'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Veuillez remplir le champ';
                }
                return null;
              },
              onSaved: (val) => setState(()=> _name = val),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom'
              ),
              validator: (value) {
                _name = value;
                if (value.isEmpty) {
                  return 'Veuillez remplir le champ';
                }
                return null;
              },
              onSaved: (val) => setState(()=> _firstName = val),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
              keyboardType: TextInputType.number, //Affiche le clavier numérique
              inputFormatters: <TextInputFormatter>[
                new LengthLimitingTextInputFormatter(2), // limitation des maillots de 0 à 99
                WhitelistingTextInputFormatter.digitsOnly // force l'usage du clavier numérique
              ],
              decoration: InputDecoration(
                 border: OutlineInputBorder(),
                labelText: 'Numero'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Veuillez remplir le champ';
                }
                return null;
              },
              onSaved: (val) => setState(()=> _number = int.parse(val)),
            ),
          ),
          Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: DropDownFormField(
                  titleText: 'Poste du joueur',
                  hintText: 'Choisissez le poste',
                  value: _post,
                  onSaved: (value) {
                    setState(() {
                      _post = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _post = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Gardien",
                      "value": "Gardien",
                    },
                    {
                      "display": "Defenseur",
                      "value": "Defenseur",
                    },
                    {
                      "display": "Milieu",
                      "value": "Milieu",
                    },
                    {
                      "display": "Attaquant",
                      "value": "Attaquant",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) { //Verification de la validité de la Form
                   ajouterJoueur();
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Joueur ajouté')));
                }
              },
              child: Text('Créer'),
            ),
          ),
        ],
      ),
    );
  }
}
