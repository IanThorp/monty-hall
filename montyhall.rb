class Montyhall

  attr_reader :door_arr

  @@prizes = %w( car goat goat )

  def initialize(door_arr)
    @door_arr = door_arr
  end

end
