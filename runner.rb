require "./door"
require "./montyhall"
require "./image_processing"

# simulate takes one argument, integer for number of simulations
# integer defaults to 10,000

results = Montyhall.simulate

text = create_result_text(results[:stats])
create_result_image(text)
