class SecretsController < ApplicationController
  def new
  end

  def show
    redirect_to '/login' unless current_user
  end

  private
  def require_login
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
  end
end