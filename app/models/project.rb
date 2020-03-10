class Project < ApplicationRecord
    belongs_to :developer, :class_name => :User
    belongs_to :client, :class_name => :User


end
