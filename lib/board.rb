class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups=Array.new(14){[:stone, :stone, :stone, :stone]}
    @cups[6] , @cups[13] = [],[]
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos <0 || start_pos > 13
    true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)
          i=start_pos
      while(!cups[start_pos].empty?)
          i+=1
          i=0 if i>14
          return :switch if  cups[i].empty?
          return :prompt if  i==9
          cups[i].push(cups[start_pos].pop)
          i+=1
          i=0 if i>14
          winner(current_player_name)

      end

    end
    render
    next_turn(i)
    return i
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..6].all?{:empty} || cups[7..13].all?{:empty?}
  end

  def winner(name)
    return name if one_side_empty?
  end
end
