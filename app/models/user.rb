class User < ApplicationRecord
    has_many :user_skills, :foreign_key => 'developer_id'
    has_many :skills, through: :user_skills, :foreign_key => 'developer_id'

    has_many :projects, :foreign_key => 'client_id'
    has_many :projects, :foreign_key =>'developer_id'
    has_many :proposals, :foreign_key =>'client_id'

end
