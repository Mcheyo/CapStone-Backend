class SkillsController < ApplicationController
    def index 
        skills = Skill.all 
        render json: skills
    end 

    def show 
    skill = Skill.find_by(id: params[:id])
    render json: skill.to_json(include:{developers:{only: [:id, :name]}})
    end
end
