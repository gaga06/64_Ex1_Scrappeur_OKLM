class HomeController < ApplicationController

  def index

   p @currencies_values = StartScrap.new.perform

      @currency = params[:currency]

  end

end
