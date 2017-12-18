require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  cardTotal = 0
  2.times do
    cardTotal += deal_card
    end
  display_card_total (cardTotal)
  cardTotal

end

def hit?(cardTotal)
  prompt_user

  case get_user_input
  when "h"
    cardTotal += deal_card
  when "s"
    cardTotal
  else
    invalid_command

  end

end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardTotal = initial_round
  until cardTotal >= 21
    cardTotal = hit?(cardTotal)
    display_card_total(cardTotal)
  end

  end_game(cardTotal)
end
