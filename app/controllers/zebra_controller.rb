class ZebraController < ApplicationController
  def play
    @user_move = params[:move] # Capture user's move from the parameters
    @random_move = ["rock", "paper", "scissors"].sample # Randomly pick a move for the computer
    
    # Determine the result
    if @user_move == @random_move
      @result = "We tied!"
    elsif win_conditions[@user_move] == @random_move
      @result = "We won!"
    else
      @result = "We lost!"
    end

    # Render the result in the same view template
    render({ template: "game_templates/play" })
  end

  # Define win conditions
  def win_conditions
    {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
  end

def rules
  render({template:"game_templates/rules"})
end

end
