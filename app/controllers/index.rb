get '/' do
  # Look in app/views/index.erb
  # if params[:word]

  # end
  erb :index
end

get '/:wildcard' do
  @word_anagram = Word.anagrams(params[:wildcard])
  erb :index
end

post "/post_route" do
  redirect to "/#{params[:user_input]}"
end
