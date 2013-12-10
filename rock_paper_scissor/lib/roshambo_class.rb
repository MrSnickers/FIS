#### RPS GAME CLASS


class Roshambo

  attr_accessor :moves, :opponents_move, :move, :result

  def initialize(intake)
  @possible_moves =["rock","paper","scissors"]
  @move
  @opponents_move = intake.downcase
  @result
  end

  def pick_move
    @move = @possible_moves.sample
  end

  def winner
    case 
    when move == opponents_move
      @result = "It's a draw!"
    when (move == "rock" && opponents_move == "paper") ||
        (move == "scissors" && opponents_move == "rock") ||
        (move == "paper" && opponents_move == "scissors")
      @result = "You win!"
    when (opponents_move == "rock" && move == "paper") ||
        (opponents_move == "scissors" && move == "rock") ||
        (opponents_move == "paper" && move == "scissors")
      @result = "I win!"
    when opponents_move == "sterling"
      @result = "Yours is the best move of all!"
    else
      @result = "#{opponents_move} is not actually an option"
      
    end
   
  end


end