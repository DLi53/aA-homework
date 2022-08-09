class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){Array.new}
    @name1 = name1 #6
    @name2 = name2 # 12
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each.with_index do |cup, i|
      if i != 6 && i != 13
        4.times do 
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 12 || start_pos < 0
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos].dup
    @cups[start_pos] = []
    i=start_pos
    while !stones.empty?
        i+=1
        i = 0 if i > 13

        if i == 6 && current_player_name == @name1
          @cups[6] << stones.shift
        elsif i == 13 #&& current_player_name == @name2
          @cups[13] << stones.shift if current_player_name == @name2
        else
          @cups[i] <<stones.shift
        end
    end

    self.render
    self.next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).any?{|i|@cups[i].empty?} || (7..12).any?{|i|@cups[i].empty?} 

  end

  def winner
    return :draw if @cups[6] == @cups[13]
    if @cups[6].length > @cups[13].length
      return @name1
    else
      @name2
    end
  end
end

b = Board.new('dan1','dan2')
p b.cups