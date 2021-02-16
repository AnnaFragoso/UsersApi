class Api::V1::AuthenticationController < ApplicationController
    # skip_before_action :verify_authenticity_token, :except => [:create]
    skip_before_action :verify_authenticity_token

    def login_user
        @user = User.where(name: params[:user][:email], password: params[:user][:password]).exists?(conditions = :none)
        if @user
            render template: "api/v1/user/index"
        else
            render html: helpers.tag.strong('Not Found')
        end
    end


    def create
        User.create(user_params)
        
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
