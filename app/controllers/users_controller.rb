class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include:{skills:{only: ["name"]}})
    end 

    def show
        user = User.find_by(id: params[:id])
        
        render json: user.to_json(include:{skills: {only: ["name"]}, proposals:{only:["idea"]}})
    end 

    def create 
        
        user = User.create(name:params["name"], username:params["username"], password:params["password"],bio:params["bio"] )
        if user.valid? && params["skill"]
            
        user.update(skill_ids: params["skill"]) 
        render json: user.to_json(include:{skills:{only: ["name"]}})
        elsif user.valid?
            render json: user
        else 
          render  json: {
                message:   user.errors.full_messages
              }
     
        end 
    end 


    
   
end
