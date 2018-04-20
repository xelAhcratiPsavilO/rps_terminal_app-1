class Game

  def initialize(std_out = $stdout, std_in = $stdin)
    @std_out = std_out
    @std_in = std_in
  end

  def prompt
    @std_out.write("Choose your weapon: r/p/s\n")
  end

  def select
    @human = @std_in.read
  end

  def pc_move
    random_choice = rand(2)
    if random_choice == 0
      @pc = 'r'
    elsif random_choice == 1
      @pc = 'p'
    else
      @pc = 's'
    end
    return @pc
  end

  def tell_winner
    print @human
    print @pc
    if @human == @pc
      p 'Draw'
    elsif @human == 'r' && @pc == 'p'
      p 'You lost'
    elsif @human == 'r' && @pc == 's'
      p 'You won'
    elsif @human == 'p' && @pc == 's'
      p 'You lost'
    elsif @human == 'p' && @pc == 'r'
      p 'You won'
    elsif @human == 's' && @pc == 'r'
      p 'You lost'
    elsif @human == 's' && @pc == 'p'
      p 'You won'
    end
  end

end
