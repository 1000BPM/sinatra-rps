require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:home_page)
end

get("/rock") do
  @we_choice = "rock"

  choices = ["rock","paper","scissors"]

  @they_choice = choices.sample

  #Rule logic
  
    if @they_choice == "rock"
      @outcome = "We tied!"
    elsif @they_choice == "paper"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    
    end

  erb(:rock)

end

get("/paper") do
  @we_choice = "paper"

  choices = ["rock","paper","scissors"]

  @they_choice = choices.sample

  #Rule logic
  
    if @they_choice == "paper"
      @outcome = "We tied!"
    elsif @they_choice == "scissors"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    
    end

  erb(:rock)
end

get("/scissors") do
  @we_choice = "scissors"

  choices = ["rock","paper","scissors"]

  @they_choice = choices.sample

  #Rule logic
  
    if @they_choice == "scissors"
      @outcome = "We tied!"
    elsif @they_choice == "rock"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    
    end

  erb(:rock)
end
