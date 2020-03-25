class Project < ApplicationRecord
    belongs_to :developer, :class_name => :User, optional: true 
    belongs_to :client, :class_name => :User
    has_many :proposals 
    has_many :project_skills 
    has_many :skills, through: :project_skills
end
