class RemoveDescriptionFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :description, :string
  end
end
