class AddZipToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :zip, :integer
  end
end
