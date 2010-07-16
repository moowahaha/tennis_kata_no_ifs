class Game
  def initialize
    @player1_score_pos = 0
    @player2_score_pos = 0
    @winner = ''
    @score
    @scores = [
            lambda {|player| @score[player - 1] = 0 },
            lambda {|player| @score[player - 1] = 15},
            lambda {|player| @score[player - 1] = 30},
            lambda {|player| @score[player - 1] = 40},
            lambda {|player|
              different = @player1_score_pos - @player2_score_pos
              codes = {
                -2 => lambda {
                  @winner = 'Player 2'
                },
                0  => lambda {
                  @score = 'Deuce'
                },
                2  => lambda {
                  @winner = 'Player 1'
                }
              }

              codes.
    }]
  end

  def player1_score
    @player1_score_pos += 1
    @scores[@player1_score_pos].call 1
  end

  def player2_score
    @player2_score_pos += 1
    @scores[@player2_score_pos].call 2
  end

#  def begining_score
#      [@scores[@player1_score_pos].call, @scores[@player2_score_pos].call]
#  end
#
#  def score
#    combo = (@player1_score_pos + @player2_score_pos > 6)
#    methods = {
#            true => lambda{begining_score},
#            false => lambda{end_game_score}
#            }
#    method = methods[combo]
#    method.call
#  end
#
#
#  def end_game_score
#    end_scores = {
#            -1 => 'adv 1',
#            0 => 'Deuce',
#            1 => 'adv 2'
#     }
#    diff = (@player1_score_pos - @player2_score_pos)
#    return end_scores[diff]
#
#  end

#  def player1_score
#
#    increment = lambda { 1 }
#    score_table = [
#            #  0            15          30          40
#            [increment, increment, increment, increment, increment], # 0
#            [increment, increment, increment, increment, increment], # 0
#            [increment, increment, increment, increment, increment], # 0
#            [increment, increment, increment, increment, increment], # 0
#    ]
#
#
#    @player1_score_pos += 1
#    @scores[@player1_score_pos].call 1
#  end
#
#  def player2_score
#    @player2_score_pos += 1
#    @scores[@player2_score_pos].call 2
#  end

  def winner
    @winner
  end
end