require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'player' 
require 'boardcase'
require 'board'
require 'application'


player1 = Player.new
player2 = Player.new

player1.introduce

puts "Et toi player 2 ??? Sache que #{player1.name} commence ;)"

player2.introduce


game = Application.new(player1,player2)

game.perform




