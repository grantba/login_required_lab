class SecretsController < ApplicationController
    before_action :require_login

    def show
        @name = session[:name]
    end

    private

    def require_login
        redirect_to login_path if current_user.blank?
    end

end