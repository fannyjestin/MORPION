class Board

  attr_accessor :case_array, :turn_count
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

    def initialize
      @turn_count = 0
      @case_array = []
        3.times do |row|
            @case_array[row] = []
            3.times do |col|
            @case_array[row][col] = BoardCase.new 
            end 
        end
    end


  def print_case
    for n in 0..2 do 
      @case_array[n][0].print_case
      print "|"
      @case_array[n][1].print_case
      print "|"
      @case_array[n][2].print_case 
      puts
    end 
  end



    #savoir si la caseboard est free ou non
    def is_free?(x,y)
      return @case_array[x][y].is_free?
    end



    def player1_next?
      return false if ( turn_count % 2 == 0 )
      return true
    end


    def check(x,y,new_value)
      #determiner a qui est le tour
      @case_array[x][y].value_case = new_value
      @turn_count+=1
    end
  
  
  #0 si personne a gagné
  #1 si joueur 1 a gagné
  #2 si joueurr 2 a gagné

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
      for n in 0..2 do
        #condition si victore avec par rangée
      if @case_array[n][0].value_case == @case_array[n][1].value_case && @case_array[n][2].value_case == @case_array[n][1].value_case
        if @case_array[0][0].value_case  == 1
          return 1
        elsif @case_array[0][0].value_case == 2
          return 2
        end
      end
        #condition si victore avec par colonne
      if @case_array[1][n].value_case == @case_array[2][n].value_case && @case_array[1][n].value_case == @case_array[3][n].value_case
        if @case_array[1][0].value_case  == 1
          return 1
        elsif @case_array[1][0].value_case ==2
          return 2
        end
      end

        #condition si victore avec par diagonal
      if @case_array[0][0].value_case == @case_array[1][1].value_case && @case_array[3][3].value_case == @case_array[1][1].value_case
        if @case_array[0][0].value_case  == 1
          return 1
        elsif @case_array[2][0].value_case ==2
          return 2
        end
      end

#condition si victore avec par diagonal
      if @case_array[0][2].value_case == @case_array[1][1].value_case && @case_array[3][0].value_case == @case_array[1][1].value_case
        if @case_array[0][0].value_case  == 1
          return 1
        elsif @case_array[2][0].value_case ==2
          return 2
        end
      end

      return nil
   end



  def is_over?
    return true if @turn_count == 10 
    return false
  end 

end
end 

