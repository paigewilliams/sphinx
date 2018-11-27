require('rspec')
require('project')

describe('#random_riddle') do
  context('when random_riddle is called on an instance of Riddles') do
    it('generates a random riddle') do
      riddle = Riddles.new()
      riddle.generate_riddle()
      expect(riddle.random_riddle).to(eq("anything"))
    end
    it('find the answer to the random riddle') do
      riddle = Riddles.new()
      riddle.generate_riddle()
      riddle.random_riddle()
      expect(riddle.find_answer()).to(eq("anything"))
    end
  end
end
