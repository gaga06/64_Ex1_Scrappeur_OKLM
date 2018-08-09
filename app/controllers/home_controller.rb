class HomeController < ApplicationController

  def index

    @currencies_values = StartScrap.new.perform

  end

end
