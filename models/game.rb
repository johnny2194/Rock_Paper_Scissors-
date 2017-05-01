class Game
  attr_reader :choice1, :choice2

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end 

  def winner?

    show_down = [@choice1, @choice2]
    winning_outcomes = [ ["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]]

    if @choice1 == @choice2
      return "Draw!"
    elsif winning_outcomes.include?(show_down)
      return "#{@choice1} wins!"
    else
      return "#{@choice2} wins!" 
    end
  end

end 


