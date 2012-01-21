class Cell
  attr_accessor :n, :ne, :e, :se, :s, :sw, :w, :nw, :population

  def initialize(x,y,population)
     @x,@y, @population = x,y, population
  end

  def directions
    %w(n,ne,e,se,s,sw,w,nw).map(&:to_sym)
  end

  def position(direction)
    case direction
    when :n  then [@x - 1, @y    ]
    when :ne then [@x - 1, @y + 1]
    when :e  then [@x,     @y + 1]
    when :se then [@x + 1, @y + 1]
    when :s  then [@x + 1, @y    ]
    when :sw then [@x + 1, @y - 1]
    when :w  then [@x    , @y - 1]
    when :nw then [@x - 1, @y - 1]
    end
  end

  def update_neighbours
    directions.each do |direction|
      p = position(direction)
      self[direction] = population.find_cell(p)
      end
    end
  end

end

class Live < Cell
  def initialize
  end
end

class Dead < Cell
end

class Population < Array
  def initialize
    self << Live.new(0,0,self)
    self << Live.new(0,1,self)
    self << Live.new(0,2,self)
    self
  end

  def find_cell(position)
    self.select {|cell| position.first == cell.x && position.last == cell.y}.first
  end

end

class Generation
  def initialize
    @population = Population.new
    update_neighbours
  end

  def update_neighbours
    @population.each do |cell|
      cell.update_neigbhours
    end
  end

  def to_s
  end
end

