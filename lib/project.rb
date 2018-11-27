
class Riddles
  # attr_accessor :chances
  # attr_accessor :riddle_number
  # def chances
  #   @@chances = 0
  # end
  #
  # def riddle_number
  #   @@riddle_number = 0
  # end

  def initialize

    @riddle_hash = Hash.new()
    @riddle_hash.store("What goes on fours in the morning, on twos in the afternoon and on threes at night?", "human")
    @riddle_hash.store("What kind of men are always above board?", "chessmen")
    @riddle_hash.store("I start off dry but come out wet. I go in light and come out heavy. What am I?", "teabag")

    @hint_hash = Hash.new()
    @hint_hash.store("What goes on fours in the morning, on twos in the afternoon and on threes at night?", "What are you?")
    @hint_hash.store("What kind of men are always above board?", "You play me!")
    @hint_hash.store("I start off dry but come out wet. I go in light and come out heavy. What am I?", "I go in water.")

  end

  def random_riddle
    @random = @riddle_hash.keys.sample(1)
  end

  def find_answer
    @riddle_hash.fetch(@random[0])
  end

  def find_hint
    @hint_hash.fetch(@random[0])
  end
end
