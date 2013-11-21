class PagesController < ApplicationController
  before_filter :authenticate_user!, except: :about
  
  def about 
  end
  
  def events
    @user = current_user.id
  end
  
end