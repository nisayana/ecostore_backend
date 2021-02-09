class AddOverviewToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :overview, :string
  end
end
