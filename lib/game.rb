class Game


  # Dependency Injection
  def initialize(std_out, std_in, weapon_selector)
    @std_out = std_out
    @std_in = std_in
    @weapon_selector = weapon_selector
    @choices = Hash["r" => :rock, "p" => :paper, "s" => :scissors]
  end

  def prompt
    @std_out.write("Choose your weapon: r/p/s\n")
  end

  def select
    input = @std_in.read
    @choices[input];
  end

  def choose
    @weapon_selector.select
  end

end
