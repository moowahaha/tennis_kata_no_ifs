require 'spec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'game')

describe Game do
  before do
    @game = Game.new
  end
  it "should start at 0-0" do
    @game.score.should == [0,0]
  end

  it "should be no winner when the game is not started" do
    @game.winner.should == ''
  end

  it "should be no winner when the game started" do
    @game.player1_score
    @game.winner.should == ''
  end

  it "should return 15 - 0 if player 1 score" do
    @game.player1_score
    @game.score.should == [15, 0]
  end

  it "should return 15 - 15 if both player score" do
    @game.player1_score
    @game.player2_score
    @game.score.should == [15, 15]
  end

  it "should return 30 - 15 when player 1 scores twice and player 2 score once" do
    2.times { @game.player1_score }
    @game.player2_score
    @game.score.should == [30, 15]
  end

  it "should return 40 - 15 when player 1 scores twice and player 2 score once" do
    3.times { @game.player1_score }
    @game.score.should == [40, 0]
  end

  it "should win the game when player 1 scores 4 times uninterrupted" do
    4.times { @game.player1_score }
    @game.winner.should == 'Player 1'
  end

  it "should win the game when player 2 scores 4 times uninterrupted" do
    4.times { @game.player2_score }
    @game.winner.should == 'Player 2'
  end

  it "should be deuce at 40-40" do
    4.times { @game.player1_score }
    4.times { @game.player2_score }
    @game.score.should == 'Deuce'
  end
end