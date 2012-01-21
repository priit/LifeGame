class Cell
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight
  
  def initialize(one = nil,two = nil,three = nil,four = nil,five = nil,six = nil,seven = nil,eight = nil)
    %w(one,two,three,four,five,six,seven,eight).each do |i|
      eval "@#{i} = #{i}"
    end
  end
end

class Live < Cell
  def initialize
    (1..8).each { |position| Dead.new(self, position) }
  end
end

class Dead < Cell
  def initialize(position)
    @position = position
  end

  def position
    @postition
  end
end

class Neighbour < Cell
  def initialize(position)
    @position = position
  end

  def position
    @postition
  end
end

class Population
end

class Generation
  def initialize
    @population = Population.new
    @population << Live.new
  end
end


