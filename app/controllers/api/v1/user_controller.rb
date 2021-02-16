class Api::V1::UserController < ApplicationController

    def create
        user = User.create(name: "Anna", email: "anna.barbara.fragoso@hotmail.com", password: "123")

        puts user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_back fallback_location: { action: "index" }
    end
end
