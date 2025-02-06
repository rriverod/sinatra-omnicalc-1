require "sinatra"
require "sinatra/reloader"


get("/") do

erb(:square)
end

get("/square/new") do
  erb(:square)
  end
  
get("/square/results") do
  @user_num=params.fetch("number").to_f
  @num_squared= @user_num * @user_num
  erb(:square_results)  
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @user_num=params.fetch("user_number").to_f
  @num_root= Math.sqrt(@user_num)
  erb(:square_root_results)  
end

get("/payment/new") do
  erb(:payment)
  end

get("/payment/results") do
  @user_apr=params.fetch("user_apr").to_f
  @user_years=params.fetch("user_years").to_i
  @user_pv=params.fetch("user_pv").to_f
  @user_payment=( @user_apr * @user_pv/1200)/(1-((1+@user_apr/1200)**(-@user_years*12)))
  erb(:payment_results)
  
  end
  

get("/random/new") do
  erb(:random)
  end

get("/random/results") do
    @user_min=params.fetch("min").to_f
    @user_max=params.fetch("max").to_i
    @random_num=rand(@user_min..@user_max)
    erb(:random_results)  
    end
