Rails.application.routes.draw do

  # get '/path' => 'controller#action'
  get '/game' => 'game#try'

  get '/new_game' => 'game#reset'

end
