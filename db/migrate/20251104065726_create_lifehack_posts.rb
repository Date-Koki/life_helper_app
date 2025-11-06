class CreateLifehackPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :lifehack_posts do |t|
      t.string :title, null: false
      t.integer :category_id, null: false
      t.text :description, null: false
      t.string :nickname, null: false
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
