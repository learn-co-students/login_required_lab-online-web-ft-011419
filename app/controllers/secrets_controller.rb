class SecretsController < ApplicationController
  before_action :require_login 
  def new
  end

  def show
    #if session[:name]
      
    #else
     #redirect_to controller: 'sessions', action: 'new' #unless current_user
    #end
   
  end





  private
  def require_login 
    #return head(:forbidden)unless 
      redirect_to controller: 'sessions', action: 'new' unless session.include? :name
    
  end
end
