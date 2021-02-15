class Api::V1::UserController < ApplicationController

    def index
        puts "Bem vindo"
    end

    def create
        user = User.create(name: "Anna", email: "anna.barbara.fragoso@hotmail.com", password: "123")

        puts user
    end

    def show
        
    end
end
