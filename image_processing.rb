require "mini_magick"

def create_result_text(stats)
  switch = stats[:switch]
  switch_win_percent = (switch[:wins].to_f / (switch[:wins].to_f + switch[:losses].to_f) * 100).round(2)

  no_switch = stats[:no_switch]
  no_switch_win_percent = (no_switch[:wins].to_f / (no_switch[:wins].to_f + no_switch[:losses].to_f) * 100).round(2)

  "Switched Doors:   Wins: #{switch[:wins]},  Losses: #{switch[:losses]}, Win Percent: #{switch_win_percent}%\n
  Not Switch Doors:   Wins: #{no_switch[:wins]},  Losses: #{no_switch[:losses]}, Win Percent: #{no_switch_win_percent}%"
end

def create_result_image(text)
  img = MiniMagick::Image.open("template.jpg")
  img.path #=> "input.jpg"
  img.resize "800x800"
  img.combine_options do |c|
    c.background '#ffffff'
    c.gravity 'center'
    c.draw "text 10,10 '#{text}'"
    c.fill("#000000")
  end

  img.write("results.jpg")
end
