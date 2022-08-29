class AddAgePolitical < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :age, :integer, null: false
    add_column :users, :political_affiliation, :string, null: false
    add_column :users, :password, :string, null: false
  end
end

# add_column :table, :column_name, :data type, null or uniqueness constraint