public with sharing class Player {
   public void playing(){
    string player1Name ='Merve';
    string player2Name ='Murat';
    string player3Name = 'Mert';
    string player4Name ='Melis';
    string player5Name = 'Unal';
    system.debug('player1===>'  + player1Name);
    system.debug('player2===>'  + player2Name);
    system.debug(player3Name);
    system.debug(player4Name);
    system.debug(player5Name);

  
    system.debug('player1===>'  + player1Name.length());
    system.debug('player2===>'  + player2Name.length());
    system.debug(player3Name.length());
    system.debug(player4Name.length());
    system.debug(player5Name.length());

    system.debug(player1Name.toUpperCase());
   }
}