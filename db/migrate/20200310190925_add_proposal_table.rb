class AddProposalTable < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
    t.integer :client_id
    t.string :idea 
    end 
  end
end
