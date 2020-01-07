require_relative 'config/environment'
require "pry"

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name_backwards = params[:name].reverse
    "#{@name_backwards}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2

    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @times_by = params[:number].to_i
    @print = params[:phrase]
    @grand_total = ""
    @times_by.times {@grand_total += @print}
    @grand_total
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @all_words = " #{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @all_words    
  end

  get "/:operation/:number1/:number2" do 

    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i
    @operation = params[:operation]  

    if  @operation == "add"      
      answer = @num1 + @num2
      answer.to_s 
    elsif @operation == "subtract"
      answer = @num2 - @num1
      answer.to_s
    elsif @operation == "multiply"
      answer = @num2 * @num1
      answer.to_s
    elsif @operation == "divide"
      answer = @num1 / @num2
      answer.to_s      
    end

  end
    
    # @add = params[]
    # @subtract
    # @multiply
    # @divide
    # if 
  
end