class User < ApplicationRecord
    has_many :user_skills, :foreign_key => 'developer_id'
    has_many :skills, through: :user_skills, :foreign_key => 'developer_id'

    has_many :proposed_projects, :foreign_key => 'client_id', class_name: "Project"
    has_many :working_projects, :foreign_key =>'developer_id', class_name: "Project"
    has_many :proposals, :foreign_key =>'client_id', class_name: "Proposal"
    # has_many :proposals, :foreign_key =>'developer_id'
    has_secure_password
    validates :username, uniqueness: {case_sensitive: false }

end
