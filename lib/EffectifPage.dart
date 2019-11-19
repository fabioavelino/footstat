import 'package:flutter/material.dart';
import 'utilities/Constants.dart';



class EffectifPage extends StatefulWidget {
  List lstJoueurs = getLstJoueurs();
  @override
  _EffectifPageState createState() => _EffectifPageState();
}

class _EffectifPageState extends State<EffectifPage> {
  void initState() {
    super.initState();
}

void checkList(){ //Si la liste est vide il faudra afficher un message invitant l'utilisateur a créer son effectif
    if(lstJoueurs.length == 0){

    }else{// si la liste n'est pas vide on montre l'effectif actuel
      
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
            child: Text(
              'Inserer Joueur',
              
            ),
            ),
          ],
        ),
        ),
      );
  }
}
