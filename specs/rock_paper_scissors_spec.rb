require ('minitest/autorun')
require_relative ('../models/rock_paper_scissors')

class RockPaperScissorsSpec < MiniTest::Test

  def test_left_hand_rock_right_hand_paper()
    game = RockPaperScissors.new("rock", "paper")
    gameplay =game.play()
    assert_equal("Right hand player won with PAPER over left handed ROCK!", gameplay)
  end

  def test_left_hand_scissors_right_hand_rock()
    game = RockPaperScissors.new("scissors", "rock")
    gameplay =game.play()
    assert_equal("Right hand player won with ROCK over left handed SCISSORS!", gameplay)
  end

  def test_left_hand_scissors_right_hand_scissors()
    game = RockPaperScissors.new("scissors", "scissors")
    gameplay =game.play()
    assert_equal("Both players played SCISSORS - tie!", gameplay)
  end

end