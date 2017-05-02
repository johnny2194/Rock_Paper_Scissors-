require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game.rb')


get '/winner/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]
  game = Game.new(choice1, choice2)
  @game = game.winner() 
  erb(:result)
end

