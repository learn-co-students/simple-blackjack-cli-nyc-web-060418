def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total.to_i
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card()
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
    return card_total.to_i
  elsif input == "s"
    return card_total
  else
    invalid_command(card_total)
  end

end

def invalid_command(card_total)
  puts "Please enter a valid command"
  hit?(card_total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  cards = 0
  welcome
  cards = initial_round()
  while cards < 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
# runner
