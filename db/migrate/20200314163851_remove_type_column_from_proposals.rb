class RemoveTypeColumnFromProposals < ActiveRecord::Migration[6.0]
  def change
    remove_column :proposals, :type, :string
  end
end
