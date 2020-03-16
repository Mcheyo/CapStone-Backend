class Project < ApplicationRecord
    belongs_to :developer, :class_name => :User, optional: true 
    belongs_to :client, :class_name => :User
    has_many :proposals 

end
