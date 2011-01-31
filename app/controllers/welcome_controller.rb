class WelcomeController < ApplicationController
  def index
  end
  
  def iphone
    render :layout => 'iphone'
  end

end
