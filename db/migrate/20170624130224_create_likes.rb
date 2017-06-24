class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :User, index: true, foreign_key: true
      t.references :Tweet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
