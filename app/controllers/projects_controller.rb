class ProjectsController < ApplicationController
    def index
        projects = Project.all 
        render json: projects 
    end 

    def show
        project = Project.find_by(id: params[:id])
        render json: project 
    end 

    def create 
        
        project = Project.create(idea: params["idea"], client_id:params["client"], status:"Pending", name:params["name"])
       suggested_users =  User.all.select{|user| user.skill_ids & params["skills"] == params["skills"]} 
       
         if project.valid?
        render json: { 
            project: project, 
            developers: suggested_users
        } 
         else 
                        
            render json: {
                        message: project.errors
                        }
         end 
        
    end 
    
end
