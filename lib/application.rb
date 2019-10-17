class Application

  	attr_accessor :player1, :player2, :game_board

	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
		@game_board = Board.new
  end 


  def perform

    system "clear"
  @game_board.print_case
    t = 0

    while t <=10 || victory?.nil
    puts "Choisis une case #{@player1.name}"
    input_1 = gets.chomp.to_s
    process(input_1)
    puts "Choisis une case #{@player2.name}" 
    input_2 = gets.chomp.to_s
    process(input_2)
    t +=2
    end
  end 






def process(input)
    
    while input !="A1" && input !="A2" && input !="A3" && input !="B1" && input !="B2" && input !="B3" && input !="C1" && input !="C2" && input !="C3" 
      puts "Mets un nombre valide !"
      input = gets.chomp.to_s
    end 

    case input

    when "A1"
      #check si la cqse estt disponible
      if @game_board.is_free?(0,0) then
        if @game_board.player1_next?
          @game_board.check(0,0,1)
          @game_board.print_case
        else
          @game_board.check(0,0,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end


    when "A2"
      if @game_board.is_free?(0,1) then
        if @game_board.player1_next?
          @game_board.check(0,1,1)
          @game_board.print_case
        else
          @game_board.check(0,1,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "A3"
      if @game_board.is_free?(0,2) then
        if @game_board.player1_next?
          @game_board.check(0,2,1)
          @game_board.print_case
        else
          @game_board.check(0,2,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "B1"
      if @game_board.is_free?(1,0) then
        if @game_board.player1_next?
          @game_board.check(1,0,1)
          @game_board.print_case
        else
          @game_board.check(1,0,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "B2"
      if @game_board.is_free?(1,1) then
        if @game_board.player1_next?
          @game_board.check(1,1,1)
          @game_board.print_case
        else
          @game_board.check(1,1,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "B3"
      if @game_board.is_free?(1,2) then
        if @game_board.player1_next?
          @game_board.check(1,2,1)
          @game_board.print_case
        else
          @game_board.check(1,2,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "C1"
      if @game_board.is_free?(2,0) then
        if @game_board.player1_next?
          @game_board.check(2,0,1)
          @game_board.print_case
        else
          @game_board.check(2,0,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "C2"
      if @game_board.is_free?(2,1) then
        if @game_board.player1_next?
          @game_board.check(2,1,1)
          @game_board.print_case
        else
          @game_board.check(2,1,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end

    when "C3"
      if @game_board.is_free?(2,2) then
        if @game_board.player1_next?
          @game_board.check(2,2,1)
          @game_board.print_case
        else
          @game_board.check(2,2,2)
          @game_board.print_case
        end
      else
        puts "case deja prise, ça passe ton tour hahaha"
      end
      end  
end

end 