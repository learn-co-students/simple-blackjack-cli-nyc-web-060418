def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   hand = deal_card + deal_card
   puts "Your cards add up to #{hand}"
   hand
end

def hit?
  # code hit? here
  prompt_user
  userInput = get_user_input
  if userInput == "h"
    deal_card
  elsif userInput == "s"
    0
  else
    invalid_command
    0
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  while hand <=21
    hand += hit?
    display_card_total(hand)
  end
  end_game(hand)
end
