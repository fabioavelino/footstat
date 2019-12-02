class Match{
    DateTime gameDay;
    String adversaryName;
    int adversaryGoals;
    int teamGoals;

    Match(DateTime gameDay, String adversaryName, int adversaryGoals, int teamGoals){
      this.gameDay = gameDay;
      this.adversaryName = adversaryName;
      this.adversaryGoals = adversaryGoals;
      this.teamGoals = teamGoals;
    }

    //vu qu'un match est composé de titulaires et de remplacants je sais pas si on doit faire une List de joueurs pour ce match
    // genre si on a une équipe de 20 joueurs mais qu'on ne peut qu'en mettre 12 il faudra choisir et pas tous les joueurs auront participé
    // au match, si t'as pas trop saisi le sens dis moi je t'expliquerais.
}