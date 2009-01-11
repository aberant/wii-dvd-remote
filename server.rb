require 'osc-0.1.4/lib/osc'
include  OSC

@ss = SimpleServer.new(5600)

def add_method(id)
  @ss.add_method(id) do |msg|
    yield msg if msg.to_a.first.nonzero?
  end
end

%w{ up down left right }.each do |dir|
  add_method("/wii/button/#{dir}") do 
    %x{osascript apple_scripts/#{dir}_arrow.scpt} 
  end
end

add_method("/wii/button/a") do 
  %x{osascript apple_scripts/enter_key.scpt} 
end

add_method("/wii/button/b") do 
  %x{osascript apple_scripts/main_menu.scpt} 
end

add_method("/wii/button/plus") do
  %x{osascript apple_scripts/quit.scpt} 
end

add_method("/wii/button/minus") do
  %x{osascript apple_scripts/sleep.scpt} 
end

add_method("/wii/button/home") do 
  %x{osascript apple_scripts/play_dvd.scpt} 
end

# add_method("/wii/button/plus") do 
#   %x{osascript apple_scripts/next_chapter.scpt} 
# end
# 
# add_method("/wii/button/minus") do 
#   %x{osascript apple_scripts/prev_chapter.scpt} 
# end

@ss.run
