class ProjectsController < ApplicationController
    def index
        projects = Project.all 
      
        render json: projects 
    end 

    def show
        project = Project.find_by(id: params[:id])
        suggested_users =  User.all.select{|user| user.skill_ids & project.skill_ids == project.skill_ids} 
        render json: { project:project, suggested_users:suggested_users } 


    end 

    def create 
        
        project = Project.create(idea: params["idea"], client_id:params["client"], status:"Pending", name:params["name"])
    #    suggested_users =  User.all.select{|user| user.skill_ids & params["skills"] == params["skills"]} 
       
         if project.valid?
            
            project.update(skill_ids: params["skills"]) 

        render json: { 
            project: project
            
        } 
         else 
                        
            render json: {
                        message: project.errors
                        }
         end 
        
    end 
    
end
