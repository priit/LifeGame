class Cell
  def initialize(col, row, status = 0)
    @col = col
    @row = row
    @status = status
  end

  def col
    @col
  end

  def row
    @row
  end

  def position
    [col,row]
  end

  def live?
    @status == 1
  end
end

class Matrix
  def initialize
    @matrix = []
    (1..20).each do |col|
      (1..20).each do |row|
         # hardcoded for temp
         if col == 1 && row == 1
           status = 1
         elsif col == 1 && row == 2
           status = 1
         elsif col == 2 && row == 1
           status = 1
         end

         @matrix << Cell.new(col, row, status)
      end
    end
  end
end

class Generation
  def initialize(cells)
    @matrix = Matrix.new
  end

  def run
    @matrix.each do |cell|
      # refactor later
      (-1..1).each do |col|
        (-1..1).each do |row|
           
        end
      end

      @matrix.select {|c| c.col 

    end
  end
end


Generation.new.run
