require 'nokogiri'
require 'open-uri'


class Whereyaatmatt
  attr_reader :shit

  def self.schedule
    @matt_html = Nokogiri::HTML(open('http://whereyaatmatt.com/'))
    @shit = @matt_html.css('.cff-text')[0].inner_text.split("\n")
    @shit.shift
    return_string = "Where Ya at Matt Schedule:#%"

    @shit.each do |day|
      return_string += day + "#%"
    end
    return_string
  end
end


eos = 120 #end of screen

result_screen_width = eos/2 + 50

test_string = Whereyaatmatt.schedule.split("#%")


line1 = "       .-/ / ) "
line2 = "       |/ / /  "
line3 = "       /.' /   "
line4 = "      // .---. "
line5 = "     /   .--._\\"
line6 = "    /    `--' /"
line7 = "   /     .---' "
line8 = "  /    .'      "

y = 10

line1 += " "*y
line2 += " "*y
line3 += " "*y
line4 += " "*y
line5 += " "*y
line6 += " "*y
line7 += " "*y
line8 += " "*y


line1 += test_string.shift
line2 += test_string.shift
line3 += test_string.shift
line4 += test_string.shift
line5 += test_string.shift
line6 += test_string.shift
line7 += test_string.shift
line8 += ""

_1 = line1 + " "*(result_screen_width-line1.length)
_2 = line2 + " "*(result_screen_width-line2.length)
_3 = line3 + " "*(result_screen_width-line3.length)
_4 = line4 + " "*(result_screen_width-line4.length)
_5 = line5 + " "*(result_screen_width-line5.length)
_6 = line6 + " "*(result_screen_width-line6.length)
_7 = line7 + " "*(result_screen_width-line7.length)
_8 = line8 + " "*(result_screen_width-line8.length)


_1 += "                               "
_2 += "                               "
_3 += " _____                     _ _ "
_4 += "|  ___|__  _   _ _ __   __| | |"
_5 += "| |_ / _ \\| | | | '_ \\ / _` | |"
_6 += "|  _| (_) | |_| | | | | (_| |_|"
_7 += "|_|  \\___/ \\__,_|_| |_|\\__,_(_)"
_8 += "                               "

x = 40

_1 += " "*x
_2 += " "*x
_3 += " "*x
_4 += " "*x
_5 += " "*x
_6 += " "*x
_7 += " "*x
_8 += " "*x


_1 += "______________________     "
_2 += "|,----.,----.,----.,--.    "
_3 += "||    ||    ||    ||   \\   "
_4 += "|`----'`----'|----||----\`. "
_5 += "[   FOOD     |   -||- __|(|"
_6 += "[  ,--.      |____||.--.  |"
_7 += "=-(( `))-----------(( `))=="
_8 += "   `--'             `--'   "




def clear_screen
  print "\e[2J"
  print "\e[H"
end


string_length = _1.length
food_truck_length = eos/3 + 3



finish = string_length - 1
num_spaces = 0

i = 0

clear_screen
puts "Press ENTER to find the 'Where Ya at Matt' schedule!"
# puts _7.slice(-1,0)
gets.chomp
while i <= eos + string_length - result_screen_width + 1

  start = string_length - i if i <= string_length
  finish = string_length - (i - eos) if i > eos
  # finish = 0 if finish < 0
  num_spaces = i - string_length if i >= string_length


  # flag = "Found!" if i > eos + string_length - 5

  clear_screen

  # puts "start: #{start}"
  # puts "finish: #{finish}"
  # puts "i: #{i}"
  # puts "num_spaces: #{num_spaces}"
  # puts "(eos - (finish - start) - num_spaces): #{(eos - (finish - start) - num_spaces)}"
  puts " "*num_spaces + _1.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _2.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _3.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _4.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _5.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _6.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _7.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts " "*num_spaces + _8.slice(start,finish-start+1) + " "*(eos - (finish - start) - num_spaces) + ""
  puts "-"*(eos + 1)
  sleep(0.02)
  # gets.chomp
  i += 1
end



