class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # database level constraints enforce database integrity
      # ex) null: false, index: { unique: true }
      # column names can be in string or symbol
      t.string "username", null: false, index: { unique: true }
      t.string :email, null: false
      t.index :email, unique: true

      # we will have projects where you want to index two columns together.
      t.timestamps 
    end

    # SQL version would look something like this:
    # CREATE TABLE users (
    #   id INTEGER PRIMARY KEY, -- handled by rails.
    #   username TEXT NOT NULL,
    #   email TEXT NOT NULL
    #);

  end
end
