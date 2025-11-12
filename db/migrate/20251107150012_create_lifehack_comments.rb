class CreateLifehackComments < ActiveRecord::Migration[7.1]
  def change
    create_table :lifehack_comments do |t|
      t.integer :user_id
      t.integer :lifehack_post_id
      t.text :text
      t.timestamps
    end
  end
end
