begin
  require './src/card.rb'
  require './src/numeric_card.rb'
  require './src/joker_card.rb'
  require './src/board.rb'
  require './src/effect/eight.rb'
  require './src/strength/numeric_ascending.rb'
rescue LoadError => err
  puts 'failed to require.. :('
end