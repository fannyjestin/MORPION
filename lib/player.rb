class Player

	attr_reader :name 

  def initialize
	@name 
  end

  def introduce 
  	puts "Comment tu t'appelles ? "
  	print ">"
  	@name = gets.chomp.to_s
  	puts "Salut #{@name} !"
  end 


end 
