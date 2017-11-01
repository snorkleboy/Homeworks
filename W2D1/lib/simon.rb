class Simon
  attr_accessor :game_over, :seq, :sequence_length

  def initialize
    @COLORS = %w[red blue yellow green]
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    take_turn until @game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    add_random_color
    round_success_message
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
  end

  def require_sequence; end

  def add_random_color
    @seq.push(@COLORS[rand(@COLORS.length)])
  end

  def round_success_message; end

  def game_over_message; end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
