def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
  return rand
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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  my_var = deal_card + deal_card
  display_card_total(my_var)
  my_var
end

def hit?(total)
  # code hit? here
  prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == 'h'
    total += deal_card
  elsif input == 's'
      total
  end
end

def invalid_command
  # code invalid_command here
  puts "Invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  card_total = initial_round
  until card_total > 21
  welcome
  hit?(card_total)
  card_total = hit?(card_total)
    if card_total > 21
    end_game
  else
    hit?(card_total)
    end
  end
end
    
