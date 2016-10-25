class GameController < ApplicationController

  def determine_winner (user_move, computer_move)

    if user_move == computer_move
      game_results =  "You tied!"
    elsif user_move == "paper" && computer_move == "rock"
      game_results = "You win!"
    elsif user_move == "paper" && computer_move == "scissors"
      game_results = "You lose!"
    elsif user_move == "scissors" && computer_move == "rock"
      game_results = "You lose!"
    elsif user_move == "scissors" && computer_move == "paper"
      game_results = "You win!"
    elsif user_move == "rock" &&  computer_move == "paper"
      game_results = "You lose!"
    elsif user_move == "rock" && computer_move == "scissors"
      game_results = "You win!"
    end
    return game_results
  end

  def user_plays_rock
    moves = ["rock", "paper", "scissors"]

    @user_move = "rock"
    @computer_move = moves.sample
    #@game_results = "You tied!"
    @game_results = determine_winner(@user_move, @computer_move)

    render("game/play_rock.html.erb")
  end

  def user_plays_paper
    moves = ["rock", "paper", "scissors"]

    @user_move = "paper"
    @computer_move = moves.sample
    @game_results = ""

    if @user_move == @computer_move
      @game_results =  "You tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @game_results = "You win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @game_results = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @game_results = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @game_results = "You win!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @game_results = "You lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @game_results = "You win!"
    end

    render("game/play_paper.html.erb")
  end

  def user_plays_scissors
    moves = ["rock", "paper", "scissors"]

    @user_move = "scissors"
    @computer_move = moves.sample
    @game_results = ""

    if @user_move == @computer_move
      @game_results =  "You tied!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @game_results = "You win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @game_results = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @game_results = "You lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @game_results = "You win!"
    elsif @user_move == "rock" && @computer_move == "paper"
      @game_results = "You lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @game_results = "You win!"
    end

    render("game/play_scissors.html.erb")
  end
end
