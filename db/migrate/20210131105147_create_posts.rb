class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :caption
      t.text :description
      t.string :image
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
