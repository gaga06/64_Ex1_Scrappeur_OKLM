class HomeController < ApplicationController

  def index

   p @currencies_values = StartScrap.new.perform
    puts "===================="
    p params
    puts "====================="
    if params[:currency].nil?
      render "index"
    else
      @currency = params[:currency]
    end
  end

end
