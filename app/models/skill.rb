class Skill < ApplicationRecord
    has_many :user_skills
    has_many :developers, through: :user_skills, :class_name => :User 
end
