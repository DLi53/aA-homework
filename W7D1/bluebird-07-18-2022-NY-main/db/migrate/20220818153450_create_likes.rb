class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :chirp, null: false, foreign_key: true
      # rails perform magic and figures out which table to refer to.
      t.references :liker, null: false, foreign_key: { to_table: :users }
      # rails magic doesn't work if we set column name which is not easy
      # to figure out the table name. Hence, we are defining for liker.
      t.index [:chirp_id, :liker_id], unique: true

      t.timestamps
    end
  end
end
