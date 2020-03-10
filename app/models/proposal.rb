class Proposal < ApplicationRecord
    belongs_to :client, :class_name => :User


end
