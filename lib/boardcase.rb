
#value_case if empty = 0 if circle = 1, if cross = 2
class BoardCase

	attr_accessor :value_case
	
	def initialize
		@value_case = 0
	end 

#savoir si la boardcase est free ou non
	def is_free?
		return true if value_case==0
		return false
	end
  
	def print_case
		if @value_case == 0
			print " "
		elsif @value_case ==1
			print "X"
		elsif @value_case == 2
			print "O" 
		else 
			puts "There is an issue"	
  		end
	end 

end 


