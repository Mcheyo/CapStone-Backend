class AddColumnToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :status, :string
  end
end
