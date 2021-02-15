class Api::V1::AuthenticationController < ApplicationController
    # skip_before_action :verify_authenticity_token, :except => [:create]
    skip_before_action :verify_authenticity_token

    def login
        puts "Página de login"
    end


    def create
        puts "Acessou o create: #{params[:user][:name]}"
        puts user_params
        @user = User.create(user_params)
        puts "RESULTADO: #{@user}"

        
        render "api/v1/user/index"
    end

    private

    def user_params
        params.require(:user).permit(
            :name,
            :email,
            :password
        )
    end
end
