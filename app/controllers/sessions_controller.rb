class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name].blank?
            session[:name] = params[:name]
            @user = session[:name]
            render :homepage
        else
            redirect_to login_path
        end
    end

    def destroy
        if !session[:name].nil?
            session.delete :name
        end
    end

end