get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params[:user_input] == ""
    redirect("/?grandma=SAY SOMETHING!!!!!")
  elsif params[:user_input] == params[:user_input].upcase
    redirect("/?grandma=I hear ya, Sonny.")
  else
    redirect("/?grandma=SPEAK UP!!!")
  end 
end


# def grandma_response(user_input)
#   grandma_says = "Say it again Sonny, I can't hear ya!"
#   if user_input == ""
#     grandma_says 
#   elsif user_input == user_input.upcase
#     grandma_says = "That's nice, I hear ya!"
#   else 
#     grandma_says 
#   end
# end
