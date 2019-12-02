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
}