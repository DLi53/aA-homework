class CreateChirps < ActiveRecord::Migration[7.0]
  def change
    # You won't manually create any files in db folder.
    # Rely on rails commands to create migrations and migrate onto schema.
    # Schema should not be adjusted manually.

    create_table :chirps do |t|
      t.text "body", null: false
      t.references "author", null: false, foreign_key: { to_table: :users }, index: true
      
      t.timestamps
    end
  end
end
