class RockPaperScissors

  attr_reader :left, :right

  def initialize (left, right)
    @left = left
    @right = right
  end

  def play()
    if @left == "rock"
      if @right == "paper"
        return "Right hand player won with PAPER over left handed ROCK!"
      elsif @right == "scissors"
        return "Left hand player won with ROCK over right handed SCISSORS!"
      elsif @right == "rock"
        return "Both hands played ROCK - tie!"
      end
    elsif @left == "paper"
      if @right == "rock"
        return "Left hand player won with PAPER over right handed ROCK!"
      elsif @right == "scissors"
        return "Right hand player won with SCISSORS over left handed PAPER!"
      elsif @right == "paper"
        return "Both hands played PAPER - tie!"
      end
    elsif @left == "scissors"
      if @right == "rock"
        return "Right hand player won with ROCK over left handed SCISSORS!"
      elsif @right == "paper"
        return "Left hand player won with SCISSORS over right handed PAPER!"
      elsif @right == "scissors"
        return "Both hands played SCISSORS - tie!"
      end
    end
  end

end