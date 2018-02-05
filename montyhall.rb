class Montyhall

  attr_reader :doors, :chosen

  @@prizes = %w( car goat goat )

  def initialize
    fill_doors
    @chosen = nil
  end

  def fill_doors
    door_num = 0
    @doors = @@prizes.sample(3).map do |prize|
      door_num += 1
      Door.new(prize, door_num)
    end
  end

  def choose_door(door_num)
    @chosen = doors.find { |door| door.number == door_num}
  end

  def reveal_door
    remaining_goat_doors = @doors.select do |door|
      door.number != @chosen && door.prize == "goat"
    end
    remaining_goat_doors.sample.reveal
  end

  def switch(boolean)
    if boolean
      @chosen = @doors.find do |door|
        door != @chosen && !door.revealed
      end
      return true
    end
    false
  end

  def winner?
    if @chosen.prize == "car"
      true
    else
      false
    end
  end


end
