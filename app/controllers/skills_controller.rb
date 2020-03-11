class SkillsController < ApplicationController
    def index 
        skills = Skill.all 
        render json: skills.to_json({only: [:name, :id]})
    end 

    def show 
    skill = Skill.find_by(id: params[:id])
    render json: skill.to_json(include:{developers:{only: [:id, :name]}})
    end
end
