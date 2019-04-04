class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name].present?
      session.delete :name
    end
  end

end
