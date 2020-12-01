require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  #DONE
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  
  #DONE
  get "/square/:number" do
    @squ = params[:number].to_i * params[:number].to_i
    @squ.to_s
  end

  #DONE
  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i
  end

  #DONE
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @say = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    #"#{@say.to_s}."
  end

  #work on this
  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @ans = params[:number1].to_i + params[:number2].to_i
      @ans.to_s
    when "subtract"
      @ans = params[:number1].to_i - params[:number2].to_i
      @ans.to_s
    when "multiply"
      @ans = params[:number1].to_i * params[:number2].to_i
      @ans.to_s
    when "divide"
      @ans = params[:number1].to_i / params[:number2].to_i
      @ans.to_s
    end
  end

end