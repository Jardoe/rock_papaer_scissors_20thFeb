class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def winner()
    if @hand1 == @hand2
      return "a DRAW"
    elsif (@hand1 == "rock" || @hand2 == "rock") && (@hand1  == "paper" || @hand2 == "paper")
      return "PLAYER 1 WINS" if (@hand1 == "paper")
    elsif (@hand1 == "rock" || @hand2 == "rock") && (@hand1 == "scissors" || @hand2 == "scissors")
      return "PLAYER 1 WINS" if @hand1 == "rock"
    elsif (@hand1 == "paper" || @hand2 == "paper") && (@hand1 == "scissors" || @hand2 == "scissors")
      return "PLAYER 1 WINS" if @hand1 == "scissors"
    end # end IF
  return "PLAYER 2 WINS"
  end # end WINNER

end # end CLASS GAME
