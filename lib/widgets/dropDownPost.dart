import 'package:flutter/material.dart';
import 'package:footstat/utilities/Constants.dart';
import 'package:footstat/models/Poste.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List <Poste> _lstPosts = Poste.getPostes();
  List<DropdownMenuItem<Poste>> _dropdownMenuItems;
  Poste _poste;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_lstPosts);
    _poste = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Poste>> buildDropdownMenuItems(List  lstPosts){
    List<DropdownMenuItem<Poste>> items = List();
    for(Poste post in lstPosts){
      print(post.nom);
      items.add(
        DropdownMenuItem(
          value: post, 
          child : Text(post.nom),
          ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Poste poste){
    setState((){
      _poste = poste;
    });
  }

  @override
Widget build(BuildContext context) {
  return  DropdownButton(
                value: _poste,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
    );
  }
}