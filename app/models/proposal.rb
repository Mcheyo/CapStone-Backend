class Proposal < ApplicationRecord
    belongs_to :client, :class_name => :User
    belongs_to :developer, :class_name => :User, optional: true 

end
