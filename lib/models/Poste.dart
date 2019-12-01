class Poste {
  int id;
  String nom;

  Poste(this.id, this.nom);

  static List<Poste> getPostes(){
    return<Poste>[
      Poste(1, 'Gardien'),
      Poste(2, 'Défenseur'),
      Poste(3, 'Milieu'),
      Poste(4, 'Attaquant'),
    ];
  }
}