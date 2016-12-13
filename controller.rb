require ('sinatra')
require ('sinatra/contrib/all') if development?
require_relative ('models/rock_paper_scissors')

get '/' do
  erb(:home)
end

get '/play/:left/:right' do
  game = RockPaperScissors.new(params[:left], params[:right])
  @result = game.play()
  erb(:result)
end