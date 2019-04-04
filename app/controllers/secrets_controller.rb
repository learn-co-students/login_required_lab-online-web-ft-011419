class SecretsController < ApplicationController 
    before_action :require_login 
    skip_before_action :require_login, only: [:show]

    def show 
        redirect_to '/login' unless current_user 
    end 

    def index 
    end 

    def create 
    end 

    def require_login 
        return head(:forbidden) unless current_user 
    end 
end 