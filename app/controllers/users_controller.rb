class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users 
    end 

    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json(include:{skills: {only: ["name"]}, proposals:{only:["idea"]}})

    end 
end
