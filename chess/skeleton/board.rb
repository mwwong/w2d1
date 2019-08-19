require_relative 'piece.rb'
require "byebug"
class CantMoveError < StandardError; end
class NoPieceError < StandardError; end
class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8) {Array.new(8, " ")} 
    place_piece
  end

  def place_piece
    (0..7).each do | i |
      (0..7).each do |j|
        if i.between?(2,5)
          @grid[i][j] = nil
        else
          @grid[i][j] = Piece.new.value #remove later
        end
      end
    end
  end

  def [](pos)
  #  debugger
    x, y = pos[0], pos[1]
    @grid[x][y]
   # debugger
  end

  def []=(pos, value)
    x, y = pos[0], pos[1]
    @grid[x][y] = value
  end

  def move_piece(start_pos, end_pos)

    begin
      if self[start_pos].nil?
        raise NoPieceError
      elsif self[end_pos] != nil
       raise CantMoveError
      else
        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = nil
        
      end
    rescue NoPieceError
      puts "Piece doesn't exist"
    rescue CantMoveError
      puts "Can't move to occupied space"
      # retry
    end
  end

end