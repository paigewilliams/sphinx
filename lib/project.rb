
class Riddles

  def initialize
    @riddle_hash = Hash.new()
    @riddle_hash.store("What goes on fours in the morning, on twos in the afternoon and on threes at night?", "human")
    @riddle_hash.store("What kind of men are always above board?", "chessmen")
    @riddle_hash.store("I start off dry but come out wet. I go in light and come out heavy. What am I?", "teabag")
  end

  def random_riddle
    @random = @riddle_hash.keys.sample(1)
  end

  def find_answer
    @riddle_hash.fetch(@random[0])
  end
end
# if riddle_hash[1] == "human" &&
