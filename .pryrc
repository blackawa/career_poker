begin
  require './src/card.rb'
  require './src/board.rb'
  require './src/effect/eight.rb'
rescue LoadError => err
  puts 'failed to require.. :('
end