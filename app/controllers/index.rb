get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do 

  input = params[:user_input]

  if input == input.downcase
    @grandma = "What the hell, Sonny?  Can't hears ya!  Say it again!"
  else
    @grandma = "Not since 1855"
  end

  if request.xhr?
    erb :grandma, :layout => false
  else 
    erb :index
  end 

  # if params[:user_input] == ""
  #   redirect("/?grandma=SAY SOMETHING!!!!!")
  # elsif params[:user_input] == params[:user_input].upcase
  #   redirect("/?grandma=I hear ya, Sonny.")
  # else
  #   redirect("/?grandma=SPEAK UP!!!")
  # end
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
