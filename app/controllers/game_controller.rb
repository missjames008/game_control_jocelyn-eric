class GameController < ApplicationController


  def try
    # Create secret if we don't have one yet
    if cookies[:secret] == nil
      r = Random.new
      cookies[:secret] = (1 + r.rand(100))
      cookies[:counter] = 0
    end
    if cookies[:secret].to_i == params[:guess].to_i
      @result = "Win!"
    elsif cookies[:secret].to_i > params[:guess].to_i
      @result = "Try higher."
    else
      @result = "Try lower."
    end

    cookies[:counter] = cookies[:counter].to_i + 1
  end

  def reset
    r = Random.new
    cookies[:secret] = (1 + r.rand(100))
    cookies[:counter] = 0
  end

end
