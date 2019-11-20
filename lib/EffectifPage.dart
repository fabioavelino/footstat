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

Text AfficherEffectifVide(){
    return Text('Vous n''avez pas ajouter de joueur encore');
}

void checkList(){ //Si la liste est vide il faudra afficher un message invitant l'utilisateur a créer son effectif
    if(lstJoueurs.length == 0){
      AfficherEffectifVide();
    }else{// si la liste n'est pas vide on montre l'effectif actuel
      
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Votre effectif'),
      ),
      body: Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              Container(
                  //child: checkList(),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return EffectifPage();
                        }),
                      );
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Ajouter joueur',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
