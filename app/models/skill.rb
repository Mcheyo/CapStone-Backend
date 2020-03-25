class Skill < ApplicationRecord
    has_many :user_skills
    has_many :developers, through: :user_skills, :class_name => :User 
    has_many :project_skills 
    has_many :projects, through: :project_skills
end
