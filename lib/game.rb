require_relative "player.rb"
class Game

  attr_reader :players

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @players = [@player1, @player2]
  end

  def attack(player)
    player.damage_received
  end

  def switch
    @players.reverse!
  end

end
