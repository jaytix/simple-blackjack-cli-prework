def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = 0
  cards = 0
  while cards < 2
    total += deal_card
    cards += 1
  end
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
  elsif input == 's'
    total
  else
    invalid_command
  end
  return total
end

def invalid_command
  puts "invalid command, please try again"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  def runner
  welcome
  cardTotal = initial_round
  until cardTotal > 21
    hit?(cardTotal)
  end
  end_game
end
