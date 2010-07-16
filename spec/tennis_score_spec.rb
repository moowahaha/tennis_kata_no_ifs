require 'spec'
require File.join(File.dirname(__FILE__), '..', 'lib', 'game')

describe Game do
  it "should start at 0-0" do
    game = Game.new
    game.score.should == [0,0]
  end
end
