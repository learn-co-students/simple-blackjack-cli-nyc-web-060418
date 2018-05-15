def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  new_total = 0
  new_total += card_total
  puts "Your cards add up to #{new_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type \'h\' to hit or \'s\' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  running_total = current_total
  prompt_user
  response = get_user_input
  if response == "h"
    new_card = deal_card
    running_total += new_card
  elsif response == "s"
    return running_total
  else
    invalid_command
    prompt_user
  end
  return running_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  running_total = 0
  welcome
  running_total += initial_round
  until running_total > 21 do
  running_total = hit?(running_total)
  display_card_total(running_total)
  end
end_game(running_total)
end
