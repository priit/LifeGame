class Cell
  def initialize(col, row)
    @col = col
    @row = row
  end

  def col
    @col
  end

  def row
    @row
  end
end

class Person < Cell
end

class Dead < Cell
end


class World
  def initialize(cols, rows, population)
    @world = []
    population.each do |person|
      @world << person
    end

    (0..cols).each do |col|
      (0..rows).each do |row|
        @world << Dead.new(col,row) if @world.select {|p| p.col == col && p.row == row}.size != 1
      end
    end

    @world
  end

  def self.find_neighbours_for(cell)
  end
end

class Generation
  def initialize
    population = []
    population << Person.new(1,1)
    population << Person.new(1,2)
    population << Person.new(2,1)

    @world = World.new(19,19, population)
  end

  def run
    @world.each do |cell|
       World.find_neighbours_for(cell)
    end
  end
end

#generation = Generation.new
#p generation.size

#generation.each do |gen|
  #p gen
#end

