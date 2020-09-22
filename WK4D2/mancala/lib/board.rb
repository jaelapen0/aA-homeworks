class Board
  attr_accessor :cups

  def initialize(name1, name2)

    @cups = Array.new(14) {Array.new}#(1..14).to_a
    place_stones
  end

  def place_stones
      @cups.each_with_index do |cup, i|
        if i != 13 && i != 6
          4.times do 
            cup << :stone
          end
        end
      end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > @cups.length
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end
  require "byebug"

  def make_move(start_pos, current_player_name)
    hand = self.cups[start_pos]
    self.cups[start_pos] = []
    #next_cup = @cups[start_pos + 1 % cups.length]
    next_cup = (start_pos + 1) % cups.length
    #last_cup = @cups[(next_cup + hand.length) % @cups.length]
    last_cup = (next_cup + hand.length) % @cups.length
    until hand.empty?
      @cups.each_with_index do |cup, i|
        if (next_cup...last_cup).to_a.include? (i)
          debugger
            if i == 6 || i ==13  
              @cups[i+1] << hand.shift
            else
              cup << hand.shift
            end
        end
      end
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
