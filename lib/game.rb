
class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end



puts "Hello vous deux ! Avant de commencer à jouer, peux tu te présenter premier mousaillon? "
@player1.introduce 
puts "Et toi, deuxieme moussaillon, comment te surnommes-tu ?"
@player2.introduce 
puts "Êtes-vous prêts pour le jeu de la mort qui tueee??"


puts "Allez, #{@player1.name} commence, désolée #{@player2.name}, c'est moi qui décide"