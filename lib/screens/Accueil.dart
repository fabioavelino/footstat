import 'package:flutter/material.dart';
import 'package:footstat/screens/Effectif.dart';

class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
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
                    'Voir effectif',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}