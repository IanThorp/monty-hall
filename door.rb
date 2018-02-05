class Door

  attr_reader :prize, :number, :revealed

  def initialize(prize, number)
    @prize = prize
    @number = number
    @revealed = false
  end

  def reveal
    @revealed = true
    self
  end

end
