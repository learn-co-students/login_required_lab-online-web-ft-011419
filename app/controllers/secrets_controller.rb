class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if current_user 
      render :show
    else
      redirect_to '/login'
    end
  end
 
  def index
  end
 
  def create
    @document = Document.create(author_id: user_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end