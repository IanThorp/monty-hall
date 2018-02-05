require "./door"
require "./montyhall"

monty = Montyhall.new
monty.choose_door(1)
monty.reveal_door
p monty
monty.switch(true)
p monty
p monty.winner?

