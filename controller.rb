require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/game.rb')

get '/' do
  erb(:home)
end

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1].downcase, params[:hand2].downcase)
  @result = game.winner
  erb(:result)
end
