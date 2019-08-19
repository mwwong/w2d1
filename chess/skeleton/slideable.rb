module Slideable
  HORIZONTAL_DIRS = [
    [1,0],
    [2,0],
    [3,0],
    [4,0],
    [5,0],
    [6,0],
    [7,0],
    [-1,0],
    [-2,0],
    [-3,0],
    [-4,0],
    [-5,0],
    [-6,0],
    [-7,0],

  ]

  DIAGONAL_DIRS = [
    [1,1],
    [2,2],
    [3,3],
    [4,4],
    [5,5],
    [6,6],
    [7,7],
    [-1,-1],
    [-2,-2],
    [-3,-3],
    [-4,-4],
    [-5,-5],
    [-6,-6],
    [-7,-7],
    [1,-1],
    [2,-2],
    [3,-3],
    [4,-4],
    [5, -5],
    [6, -6],
    [7,-7],
    [-1,1],
    [-2,2],
    [-3,3],
    [-4,4],
    [-5, 5],
    [-6, 6],
    [-7,7],


  ]


def horizontal_dirs(pos)
  possible_move = []  
  x, y = pos
  HORIZONTAL_DIRS.each do | delta |
    d_x, d_y = delta
    if (x + d_x).between?(0,7)
      possible_move << [x + d_x, y]  
    end
  end
  return possible_move
end
def diagonal_dirs(pos)
  possible_move = []  
  x, y = pos
  DIAGONAL_DIRS.each do | delta |
    d_x, d_y = delta
    if (x + d_x).between?(0,7) && ( y + d_y).between?(0,7)
      possible_move << [x + d_x, y + d_y]  
    end
  end
  return possible_move
end
  def moves

  end
  def move_dirs
    
  end
  def grow_unlocked_moves_in_dir(dx, dy)
    
  end
end

#p horizontal_dirs([0,0])
p diagonal_dirs([1,5])